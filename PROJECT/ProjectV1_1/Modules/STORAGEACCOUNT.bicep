//////////STORAGE MODULE

targetScope = 'resourceGroup'


//////////////////////////___PARAMETERS__//////////////////////////////
param location string = resourceGroup().location

//KEYVAULT
param KeyVaultName string

//CONTAINER
param containerName string = 'webcontainerzentia'

//DEPLOYMENT SCRIPT
@description('UTC timestamp used to create distinct deployment scripts for each deployment')
param utcValue string = utcNow()
param filename string = 'webserver.sh'




///////////////////////___EXISTING RESOURCES__//////////////////////////
resource KEYVAULT 'Microsoft.KeyVault/vaults@2019-09-01' existing = {
  name: KeyVaultName
}

resource dskEncrKey 'Microsoft.Compute/diskEncryptionSets@2021-08-01' existing = {
  name: 'dskEncrKeyV1'
}

resource mngId 'Microsoft.ManagedIdentity/userAssignedIdentities@2018-11-30' existing = {
  name:  'ZenTIAadmin'
}


////////////////////////////////////////////////////////////////////
////////______________________RESOURCES_________________________////
////////////////////////////////////////////////////////////////////

//STORAGE ACCOUNT
resource stg 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: 'zentiastoragev1'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  identity: {
    type: 'UserAssigned'
    userAssignedIdentities: {
      '${mngId.id}': {}
      }
    }
  properties: {
    // defaultToOAuthAuthentication: false
    // allowCrossTenantReplication: false
    minimumTlsVersion: 'TLS1_2'
    // allowBlobPublicAccess: false
    accessTier: 'Hot'
    allowSharedKeyAccess: true
    networkAcls: {
      bypass: 'AzureServices'
      virtualNetworkRules: []
      ipRules: []
      defaultAction: 'Allow'
    }
    // supportsHttpsTrafficOnly: true
    encryption: {
      identity: {
        userAssignedIdentity: mngId.id
      }
      keySource: 'Microsoft.Keyvault'
      keyvaultproperties: {
        keyvaulturi: KEYVAULT.properties.vaultUri
        keyname: 'RSAKey'
      }
      services: {
        file: {
          keyType: 'Account'
          enabled: true
        }
        table: {
          keyType: 'Account'
          enabled: true
        }
        queue: {
          keyType: 'Account'
          enabled: true
        }
        blob: {
          keyType: 'Account'
          enabled: true
        }
      }
    }
  }
}

//STORAGE BLOB_SERVICES
resource storageBlob 'Microsoft.Storage/storageAccounts/blobServices@2021-08-01' = {
  parent: stg
  name: 'default'
  properties:{
    containerDeleteRetentionPolicy:{
      enabled: true
      days: 30
    }
    deleteRetentionPolicy:{
      enabled: true
      days: 30
    }
    automaticSnapshotPolicyEnabled:true
    isVersioningEnabled: true
    restorePolicy:{
      enabled: true
      days:7
    }
    changeFeed: {
      enabled: true
      retentionInDays: 14
    }
  }
}

//CONTAINER
resource container 'Microsoft.Storage/storageAccounts/blobServices/containers@2019-06-01' = {
  parent: storageBlob
  name: containerName
  properties:{
    publicAccess: 'Container'
  }
}

//DISC + DISCENCRYPTIONSET
resource disc 'Microsoft.Compute/disks@2021-08-01' = {
  name: 'StorageDisc'
  location: location
  sku: {
    name:'Standard_LRS'
  }
  properties: {
    creationData: {
      createOption: 'Empty'
    }
    encryption:{
      type: 'EncryptionAtRestWithCustomerKey'
      diskEncryptionSetId: dskEncrKey.id
    }
    diskSizeGB: 4
    networkAccessPolicy: 'AllowPrivate'
    publicNetworkAccess:'Enabled'
    diskAccessId: dskAccess.id
    osType: 'Linux'
  }
}
//DISC ACCESS
resource dskAccess 'Microsoft.Compute/diskAccesses@2021-12-01' = {
  location: location
  name: 'diskAccess'
  tags: {
    'ZenTia': 'jamaltadrous'
  }
}

//DEPLOYMENTSCRIPT
resource deploymentScript 'Microsoft.Resources/deploymentScripts@2020-10-01' = {
  name: 'deployscript${utcValue}'
  tags: {
    'ZenTia': 'jamaltadrous'
  }
  location: location
  kind: 'AzureCLI'
  properties: {
    azCliVersion: '2.26.1'
    timeout: 'PT5M'
    retentionInterval: 'PT1H'
    environmentVariables: [
      {
        name: 'AZURE_STORAGE_ACCOUNT'
        value: stg.name
      }
      {
        name: 'AZURE_STORAGE_KEY'
        secureValue: stg.listKeys().keys[0].value
      }
      {
        name: 'CONTENT'
        value: loadFileAsBase64('../misc/webinstallscript.sh')
      }
    ]
    
    scriptContent: 'echo $CONTENT | base64 -d > ${filename} && az storage blob upload -f ${filename} -c ${containerName} -n ${filename}'
  }
}

//WEBSITE
// resource uplWebsite 'Microsoft.Resources/deploymentScripts@2020-10-01' = {
//   name: 'uploadWebsite'
//   location: location
//   kind: 'AzureCLI'
//   properties: {
//     azCliVersion: '2.26.1'
//     timeout: 'P1D'
//     retentionInterval: 'P1D'
//     cleanupPreference: 'Always'
//     environmentVariables: [
//       {
//         name: 'AZURE_STORAGE_ACCOUNT'
//         value: stg.name
//       }
//       {
//         name: 'AZURE_STORAGE_KEY'
//         secureValue: stg.listKeys().keys[0].value
//       }
//       {
//         name: 'CONTENT'
//         value: loadFileAsBase64('../misc/Website/simpelwebbie.zip')
//       }
//     ]
//     scriptContent: 'echo "$CONTENT" | base64 -d > ${filename2} && az storage blob upload -f ${filename2} -c website -n ${filename2}' 
//   }
// }




//OUTPUTS
output disc string = disc.id
output stgName string = stg.name


