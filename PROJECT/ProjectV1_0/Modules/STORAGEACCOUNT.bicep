// ========== storage.bicep ==========

targetScope = 'resourceGroup'



//////////////STORAGE ACCOUNT //////////

//PARAMETERS
param storageAccountName string = 'jamalv1storageaccount'
param location string = resourceGroup().location

//RESOURCE
resource stg 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Cool'
  }
}


////////////STORAGE BLOB_SERVICES /////////////////////

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





//////////////CONTAINER////////////////////////////////

//PARAMETERS
param containerName string = 'webcontainer'

//RESOURCE
resource container 'Microsoft.Storage/storageAccounts/blobServices/containers@2019-06-01' = {
  parent: storageBlob
  name: containerName
  properties:{
    publicAccess: 'Container'
  }
}


//////////////DISC + DISCENCRYPTIONSET//////////////
resource disc 'Microsoft.Compute/disks@2021-08-01' = {
  name: '${stg.name}'
  location: location
  properties: {
    creationData: {
      createOption: 'Empty'
    }
    encryption:{
      type: 'EncryptionAtRestWithCustomerKey'
      diskEncryptionSetId: 'Microsoft.Compute/diskEncryptionSets@2021-08-01'
    }
    diskSizeGB: 4
    networkAccessPolicy: 'AllowPrivate'
    publicNetworkAccess:'Enabled'
    // maxShares: 3
    // burstingEnabled: true
    diskAccessId: dskAccess.id
    osType: 'Linux'
  }
}

resource dskAccess 'Microsoft.Compute/diskAccesses@2021-08-01' = {
  location: location
  name: 'diskAccess'
  tags: {
    'XYZ': 'jamaltadrous'
  }
}


////////////deploymentScripts///////

@description('UTC timestamp used to create distinct deployment scripts for each deployment')
param utcValue string = utcNow()
param filename string = 'webserver.sh'

resource deploymentScript 'Microsoft.Resources/deploymentScripts@2020-10-01' = {
  name: 'deployscript${utcValue}'
  tags: {
    'XYZ': 'jamaltadrous'
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

output disc string = disc.id
output stgName string = stg.name

