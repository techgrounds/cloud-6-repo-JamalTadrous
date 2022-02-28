
param location string = resourceGroup().location
// -------------------------------VNET 2--------------------------------

@description('Name for vNet 2')
param vnet2Name string = 'app-prod-vnet'

var vnet2Config = {
  addressSpacePrefix: '10.20.20.0/24'
  subnetName: 'subnet2'
  subnetPrefix: '10.20.20.0/24'
}
resource vnet2 'Microsoft.Network/virtualNetworks@2020-05-01' = {

  name: vnet2Name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        vnet2Config.addressSpacePrefix
      ]
    }
    subnets: [
      {
        name: vnet2Config.subnetName
        properties: {
          addressPrefix: vnet2Config.subnetPrefix
        }
      }
    ]
  }
}
