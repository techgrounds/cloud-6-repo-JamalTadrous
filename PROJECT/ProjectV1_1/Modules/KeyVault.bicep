//////////KEYVAULT MODULE

targetScope = 'resourceGroup'


///////////////////////___PARAMETERS__///////////////////////////
param location string = resourceGroup().location

//KEYVAULT
param keyVaultName string = 'ZenTIA${toLower(utcNow())}'

//KEYVAULT CONFIG
param enabledForDeployment bool = true
param enabledForTemplateDeployment bool = true
param enabledForDiskEncryption bool = true
param enableSoftDelete bool = true
param enablePurgeProtection bool = true
param enableRbacAuthorization bool = false

//SUBSCRIBTION CREDENTIALS
param tenantId string = subscription().tenantId
@description('Specifies the object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies. Get it by using Get-AzADUser or Get-AzADServicePrincipal cmdlets.')
param objectId string = '214bb771-fd30-4f8e-9dfc-7195f7b165ff'




////////////////////////////////////////////////////////////////////
////////______________________RESOURCES_________________________////
////////////////////////////////////////////////////////////////////

//KEYVAULT
resource KEYVAULT 'Microsoft.KeyVault/vaults@2019-09-01' = {
  name: keyVaultName
  location: location
  tags: {
    'ZenTIA': 'jamaltadrous'
  }
  properties: {
    enabledForDeployment: enabledForDeployment
    enabledForTemplateDeployment: enabledForTemplateDeployment
    enabledForDiskEncryption: enabledForDiskEncryption
    enableRbacAuthorization: enableRbacAuthorization
    tenantId: tenantId
    enableSoftDelete: enableSoftDelete
    enablePurgeProtection: enablePurgeProtection
    softDeleteRetentionInDays: 7
    accessPolicies: [
      {
        objectId: objectId
        tenantId: tenantId
        permissions: {
          keys: [
            'all'
          ]
          secrets: [
            'all'
          ]
          certificates: [
            'all'
          ]
          storage: [
            'all'
          ]
        }
      }
    ]
    sku: {
      name: 'standard'
      family: 'A'
    }
    networkAcls: {
      defaultAction: 'Allow'
      bypass: 'AzureServices'
    }
  }
}

//MANAGED IDENTITY
resource mngId 'Microsoft.ManagedIdentity/userAssignedIdentities@2018-11-30' = {
  name:  'ZenTIAadmin'
  location: location
  tags: {
    'ZenTIA': 'jamaltadrous'
  }
  dependsOn: [
    KEYVAULT
  ]
}

//SECRET (SSH PUBLIC KEY)
resource secret 'Microsoft.KeyVault/vaults/secrets@2021-10-01' = {
  parent: KEYVAULT
  name: 'ssh'
  properties: {
    value: loadTextContent('../misc/cert_key/zentiaprivpubk.pub')
  }
  tags: {
    'ZenTIA': 'jamaltadrous'
  }
}

//RSA KEY
resource RSAkey 'Microsoft.KeyVault/vaults/keys@2021-10-01' = {
  name: 'RSAKey'
  parent: KEYVAULT
  properties: {
    kty: 'RSA' // key type
    keySize: 4096
    keyOps: [
      'unwrapKey'
      'wrapKey'
      'decrypt'
      'encrypt'
      'verify'
      'sign'
    ]
    attributes:{
      enabled: true
    }
  }
  tags: {
    'ZenTIA': 'jamaltadrous'
  }
}

//DISC ENCRYPTION KEY
resource dskEncrKey 'Microsoft.Compute/diskEncryptionSets@2021-08-01' = {
  name: 'dskEncrKeyV1'
  location: location
  tags: {
    'ZenTIA': 'jamaltadrous'
  }
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    rotationToLatestKeyVersionEnabled:true
    activeKey: {
      sourceVault: {
        id: KEYVAULT.id
      }
      keyUrl: RSAkey.properties.keyUriWithVersion
    }
    encryptionType: 'EncryptionAtRestWithCustomerKey'
  }
}

//KEYVAULT POLICIES
resource kvPolicy 'Microsoft.KeyVault/vaults/accessPolicies@2021-10-01'= {
  name: 'add'
  parent: KEYVAULT
  properties:{
    accessPolicies:[
      {
        tenantId: tenantId
        objectId: dskEncrKey.identity.principalId
        permissions:{
          keys:[
            'all'
          ]
          secrets: [
            'all'
          ]
          certificates: [
            'all'
          ]
          storage: [
            'all'
          ]
        }
        
      }
      {
        tenantId: tenantId
        objectId: mngId.properties.principalId
        permissions: {
          keys: [
            'all'
          ]
          secrets: [
            'all'
          ]
          certificates: [
            'all'
          ]
          storage: [
            'all'
          ]
        }
      }
    ]
  }
}

//OUTPUTS
output KEYVAULTName string = KEYVAULT.name
output KeyvaultUri string = KEYVAULT.properties.vaultUri
output mngId string = mngId.id
output keyvaultId string = KEYVAULT.id
output objectId string = objectId
output dskEncrKey string = dskEncrKey.id


