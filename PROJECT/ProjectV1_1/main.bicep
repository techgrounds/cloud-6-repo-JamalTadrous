//////////////////////__ main.bicep ___////////////////////////
//SCOPE

targetScope = 'subscription'


//////////////////////___PARAMETERS ___////////////////////////
// LOCATION
// RESOURCE GROUP
param location string = 'westeurope'
param resourceGroupName string = 'JamsProjectV1'






////////////////////////////////////////////////////////////////
////______________________RESOURCES_________________________////
////////////////////////////////////////////////////////////////


///////////////////___RESOURCE GROUP____/////////?/////////////
//RESOURCE GROUP

module rg './Modules/RESOURCEGROUP.bicep' = {
  name: resourceGroupName
  params: {
    location: location
  }
}



////////////////////___STORAGE ACCOUNT___/////////////////////
// STORAGE ACCOUNT
// DEPLOYMENT SCRIPT

module stg './Modules/STORAGEACCOUNT.bicep' = {
  name: 'jamalv1storageaccount'
  params: {
    storageAccountName: 'jamalv1storageaccount'
    location: location
  }
  dependsOn: [
    rg
  ]
  scope: resourceGroup('JamsProjectV1')
}




/////////////////////___ADMINSERVER___///////////////////////
//VNET1
//SUBNET1
//NIC1
//NSG1
//PublicIP
//ADMIN_VM(WINDOWS)

//PARAMS
param adminUsername1 string = 'jamaltadrous'
// @secure() 
param adminPassword1 string = 'Techgr0und$'

//______________________________________________________

//ADMINSERVER
module ADMINSERVER './Modules/ADMINSERVER.bicep' = {
  name: 'ADMINSERVER'
  scope: resourceGroup('JamsProjectV1')
  dependsOn: [
    stg
    rg
    KEYVAULT
  ]
  params: {
    adminUsername1: adminUsername1
    adminPassword1: adminPassword1
    location: location

    // dskEncrKey: dskEncrKey
    // remoteVnetName: WEBSERVER.outputs.vnet2
    // subnetId1: VNETS.outputs.subnetId1
  }
}




////////////////////___WEBSERVER___///////////////////////
//VNET2
//SUBNET2
//NIC2
//NSG2
//PublicIP
//WEB_VM(LINUX)


//PARAMS
param adminUsername2 string = 'jamaltadrous'

@description('Password for the Virtual Machine.')
// param sshPublicKey string = loadFileAsBase64('../misc/sshpk')
param adminPassword2 string = 'Techgr0und$'

//________________________________________________________

//WEBSERVER(Linux)
module WEBSERVER './Modules/WEBSERVER.bicep' = {
  name: 'WEBSERVER'
  scope: resourceGroup('JamsProjectV1')
  dependsOn:[
    stg
    rg
    
  ]
  params: {
    adminUsername2: adminUsername2
    adminPassword2: adminPassword2
    // sshPublicKey: sshPublicKey
    location: location
    dskEncrKey: KEYVAULT.outputs.dskEncrKey
    // subnetId2: VNETS.outputs.subnetId2
  }
}



/////////////////////___VNET PEERING___/////////////////////
//VNET PEERING 1 & 2


module VPEERING './Modules/VNETpeering.bicep' = {
  name: 'VNETpeering'
  scope: resourceGroup('JamsProjectV1')
  dependsOn: [
    ADMINSERVER
    WEBSERVER
  ]
}



//////////////////////___KeyVault____///////////////////////
//VAULT
//ManagedIdentity
//SECRET(ssh)
//RSAkey
//DiscEncryptionKey
//KV_Policy



module KEYVAULT './Modules/KeyVault.bicep' = {
  name: 'prov1vault'
  dependsOn: [
    rg
    stg
  ]
  scope: resourceGroup('JamsProjectV1')
  params:{
    location: location
    // sub1: ADMINSERVER.outputs.admsubId1
  }
}


/////////////////___RECOVERY SERVICE VAULT___/////////////////
//RECOVERYVAULT
//BACKUP_POLICY_WITH_SCHEDULE


// module RECOVERY './Modules/Recoverymod.bicep' = {
//   name: 'RecovServVault'
//   scope: resourceGroup('JamsProjectV1')
//   dependsOn: [
//     rg
//     KEYVAULT
//     ADMINSERVER
//     WEBSERVER
//   ]
//   params: {
//     location: location
//   }
// }








