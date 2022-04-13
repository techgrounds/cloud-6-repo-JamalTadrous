// ========== Resource Group & Storageaccounts =============================

targetScope = 'subscription'

param location string = 'westeurope'

param resourceGroupName string

resource resoGroup 'Microsoft.Resources/resourceGroups@2021-04-01'= {
  name: resourceGroupName
  location: location
}

output resoGroup string = resoGroup.id
output resourceGroupName string = resoGroup.name
