//////////////////////__ main.bicep ___////////////////////////
//SCOPE

targetScope = 'subscription'


//////////////////////___PARAMETERS ___////////////////////////
// LOCATION
// RESOURCE GROUP
param location string = 'westeurope'
param resourceGroupName string = 'Prov2'




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
  name: 'jamalv2storageaccount'
  params: {
    location: location
    KeyVaultName: KEYVAULT.outputs.KEYVAULTName
  }
  dependsOn: [
    rg
  ]
  scope: resourceGroup('Prov2')
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
param adminPassword1 string = 'T3chgr0und$'

//______________________________________________________

//ADMINSERVER
module ADMINSERVER './Modules/ADMINSERVER.bicep' = {
  name: 'ADMINSERVER'
  scope: resourceGroup('Prov2')
  dependsOn: [
    stg
    rg
    KEYVAULT
  ]
  params: {
    adminUsername1: adminUsername1
    adminPassword1: adminPassword1
    location: location
  }
}




//////////////////////___WEBSERVER___///////////////////////
//VNET2
//PublicIP
//APPGW 
//SUBNET
//NIC2
//NSG2

//VM SCALESET
//Autoscalesettings
//FRONTEND POOL/CONFIG
//BACKEND POOL/CONFIG
//LISTENER

// //PARAMS
param adminUsername2 string = 'jamaltadrous'

@description('Password for the Virtual Machine.')
param adminPassword2 string = 'T3chgr0und$'


module Webserver_VMSS_AppGw './Modules/Webserver_VMSS_AppGw.bicep' = {
  name: 'WEBSERVER'
  scope: resourceGroup('Prov2')
  dependsOn: [
    stg
    rg
  ]
  params: {
    location: location
    adminUsername2: adminUsername2
    adminPassword2: adminPassword2
    dskEncrKey: KEYVAULT.outputs.dskEncrKey
  }
}

/////////////////////___VNET PEERING___/////////////////////
//VNET PEERING 1 & 2


module VPEERING './Modules/VNETpeering.bicep' = {
  name: 'VNETpeering'
  scope: resourceGroup('Prov2')
  dependsOn: [
    ADMINSERVER
    Webserver_VMSS_AppGw
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
  name: 'XYZkv'
  dependsOn: [
    rg
    
  ]
  scope: resourceGroup('Prov2')
  params:{
    location: location
  }
}



///////////////___RECOVERY SERVICE VAULT___/////////////////
//RECOVERYVAULT
//BACKUP_POLICY_WITH_SCHEDULE


// module RECOVERY './Modules/Recoverymod.bicep' = {
//   name: 'RecovServVault'
//   scope: resourceGroup('Prov2')
//   dependsOn: [
//     rg
//     KEYVAULT
//     ADMINSERVER
//     Webserver_VMSS_AppGw
//   ]
//   params: {
//     location: location
//   }
// }








