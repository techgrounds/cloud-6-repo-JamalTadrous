// ========== Resource Group & Storageaccounts =============================

targetScope = 'subscription'

param location string = 'westeurope'

resource resourcegroup 'Microsoft.Resources/resourceGroups@2021-04-01'= {
  name: 'JamsProjectRG'
  location: location
}

