
param location string = resourceGroup().location
param privateDnsZone string = 'privatelink.blob.core.windows.net'


resource dskAccess 'Microsoft.Compute/diskAccesses@2021-12-01' = {
  location: location
  name: 'diskAccess'
  tags: {
    'ZenTia': 'jamaltadrous'
  }
  target: disks
  virtualNetworks: resourceId()
  subnet: resourceId()
  privateDnsZone: privateDnsZone
}
