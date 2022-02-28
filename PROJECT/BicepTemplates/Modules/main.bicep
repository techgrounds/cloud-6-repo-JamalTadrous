// ========== main.bicep ==========


targetScope = 'subscription'


// ----------- PARAMETERS -------------

param location string = 'westeurope'


// ----------- VARIABLES -------------




// ----------- RESOURCES -------------


// -----------RESOURCE GROUP & Storage Account -------------//
module rg './resourcegroup.bicep' = {
  name: 'JamsProjectRG'
  params: {
    location: location
  }
}
// ------------------STORAGE ACCOUNT------------------------//
module stg './storageAccount.bicep' = {
  name: 'projectstorageaccount'
  params: {
    storageAccountName: 'projectstorageaccount'
    location: location
  }
  dependsOn: [
    rg
  ]
  scope: resourceGroup('westeurope')
}

//----------------------NETWORKS--------------------------//
module networks './Network.bicep' = {
  name: 'vNets'
  scope: resourceGroup('projectnetwork')
  dependsOn: [
    stg
    rg
    
  ]
}


//----------------------NSG--------------------------//



//----------------------MACHINES--------------------------//



//----------------------VAULT--------------------------//



//----------------RECOVERY SERVICE VAULT--------------------//



//----------------------DEPLOYMENT SCRIPTS----------------------//

