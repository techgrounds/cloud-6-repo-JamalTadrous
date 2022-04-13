//////////ADMIN MODULE


targetScope = 'resourceGroup'

///////////////////////___PARAMETERS__///////////////////////////

param location string = resourceGroup().location

//VM USER CREDENTIALS
param adminvmName string = 'adminserv'
param adminUsername1 string

@description('Password for the Virtual Machine.')
@minLength(6)
@secure()
param adminPassword1 string

//VM SPECS
param OSVersion string = '2019-Datacenter'
param vmSize1 string = 'Standard_B1s'
param dnsLabelPrefix1 string = toLower('adminManage-vm-${uniqueString(resourceGroup().id)}')


//VNET
param vnet1Name string = 'management-prd-vnet'

//VNET ADDRESSPREFIX
var vnet1Config = {
  addressSpacePrefix: '10.10.0.0/24'
  subnetName: 'admsubnet'
  subnetPrefix: '10.10.0.0/27'
}

// NETWORK INTERFACE CONTROLLER
param nicName1 string = 'adminnic'

//NETWORK SECURITY GROUP
var nsgName = 'adminNSG'

//PUBLIC IP
var publicIPAddressName = 'AdminPublicIP'


///////////////////_ALLOWED IP(s) FOR ADMIN ACCESS_////////////////////////////////
param sourceAddressPrefix string = '84.83.9.144' //(my wifi ip)
// param sourceAddressPrefix string = '77.63.25.180' //(my mobile hotspot ip)

//HERE I HAVE AN OPTION FOR YOU TO PUT MULTIPLE IP ADDRESSES 
//SO THEY CAN BE ALLOWED INTO THE WEBSERVER. 
//TRY TO KEEP THIS AT A MAX OF 2 FOR SECURITY REASONS.

// param sourceAddressPrefix array = [
//   {
//     IpAddress: 'adminhome.ip.address.here' <--
//   }
//   {
//     IpAddress: 'office.ip.address.here'    <--
//   }
// ]

//^^^^^^^^^^^^^^^^^^^^^^^^^^^
//FOR ADDING/USING ONE IP ADDRESS:
// JUST ADD THE ADDRESS WITHIN THE '..' AND MAKE SURE param sourceAddressPrefix string is uncommented.

//FOR ADDING/USING MULTIPLE IP ADDRESSES:
// SELECT ALL OF THE CODE OF THE sourceAddressPrefix ARRAY AND PRESS CTRL + / . 
// REMOVE OR COMMENT THE 'param sourceAddressPrefix string' 



/////////////////////__EXISTING RESOURCE__//////////////////////////


resource dskEncrKey 'Microsoft.Compute/diskEncryptionSets@2021-08-01' existing = {
  name: 'dskEncrKeyV1'
}

////////////////////////////////////////////////////////////////////
////////______________________RESOURCES_________________________////
////////////////////////////////////////////////////////////////////




//VNET
resource vnet1 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: vnet1Name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        vnet1Config.addressSpacePrefix
      ]
    }
    subnets: [
      {
        name: vnet1Config.subnetName
        properties: {
          addressPrefix: vnet1Config.subnetPrefix
        }
      }
    ]
  }
}


//SUBNET
resource admsub1 'Microsoft.Network/virtualNetworks/subnets@2021-05-01' = {
  name: vnet1Config.subnetName
  properties: {
    addressPrefix: vnet1Config.subnetPrefix
    networkSecurityGroup: {
      id: nsg1.id
    }
    serviceEndpoints: [
      { 
        service: 'Microsoft.KeyVault'
      }
      {  
        service: 'Microsoft.Storage'
      }
    ]
  }
  parent: vnet1
}



// NETWORK INTERFACE CONTROLLER
resource nic1 'Microsoft.Network/networkInterfaces@2021-02-01' = {
  name: nicName1
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig1'
        properties: {
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: publicIP.id
          }
          subnet: {
            id: admsub1.id
          }
        }
      }
    ]
    networkSecurityGroup: {
      id: nsg1.id
    }
  }
}


//NETWORK SECURITY GROUP
resource nsg1 'Microsoft.Network/networkSecurityGroups@2020-06-01' = {
  name: nsgName
  location: location
  properties: {
    securityRules: [
      {
        name: 'SSH'
        properties: {
          priority: 1000
          protocol: 'Tcp'
          access: 'Allow'
          direction: 'Inbound'
          sourceAddressPrefix: sourceAddressPrefix
          sourcePortRange: '*'
          destinationAddressPrefix: '*'
          destinationPortRange: '22'
        }
      }
      {
        name: 'RDP'
        properties: {
          description: 'rdp-rule'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '3389'
          sourceAddressPrefix: sourceAddressPrefix
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 300
          direction: 'Inbound'
        }
      }
    ]
  }
}


//PUBLIC IP
resource publicIP 'Microsoft.Network/publicIPAddresses@2020-06-01' = {
  name: publicIPAddressName
  location: location
  zones: [
    '1'
  ]
  sku: {
    name: 'Basic'
  }
  properties: {
    publicIPAllocationMethod: 'Static'
    publicIPAddressVersion: 'IPv4'
    dnsSettings: {
      domainNameLabel: dnsLabelPrefix1
    }
    idleTimeoutInMinutes: 4
  }
}


// VM (WINDOWS)
resource admVm 'Microsoft.Compute/virtualMachines@2021-03-01' = {
  name: adminvmName
  location: location
  zones: [
    '1'
  ]
  properties: {
    hardwareProfile: {
      vmSize: vmSize1
    }
    osProfile: {
      computerName: adminvmName
      adminUsername: adminUsername1
      adminPassword: adminPassword1
    }
    storageProfile: {
      imageReference: {
        publisher: 'MicrosoftWindowsServer'
        offer: 'WindowsServer'
        sku: OSVersion
        version: 'latest'
      }
      osDisk: {
        name:'adminvmstorage'
        createOption: 'FromImage'
        managedDisk: {
          storageAccountType: 'StandardSSD_LRS'
          diskEncryptionSet: {
            id: dskEncrKey.id
          }
        }
      }
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: nic1.id
        }
      ]
    }
  }
}



//OUTPUTS
output admVmId string = admVm.id
output admVmName string = admVm.name
output hostname string = publicIP.properties.dnsSettings.fqdn
output nic1 string = nic1.id
output nsg1 string = nsg1.id
output vnet1Name string = vnet1.name
output admsubId1 string = admsub1.id




