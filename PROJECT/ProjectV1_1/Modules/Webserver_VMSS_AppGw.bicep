//////////WEBSERVER MODULE


///////////////////////////////___PARAMETERS___///////////////////////////////////////////
param location string = resourceGroup().location

//VNET
param virtualNetworkName string = 'app-prod-vnet'
param vnetAddressPrefix string = '10.20.0.0/16'

//SUBNET
param subnetName1 string = 'WebSubnet'
param subnetPrefix1 string = '10.20.40.0/27'

param subnetName2 string = 'AppGWSubnet'
param subnetPrefix2 string = '10.20.0.0/27'

//NSG2
param nsgName string = 'webNSG'

//APPGW
param applicationGatewayName string = 'webAppGW'
var appGwSize = 'Standard_v2'

//AUTOSCALING
param minCapacity int = 1
param maxCapacity int = 3

//BACKEND
param backendIPAddresses array = [
  {
    IpAddress: '10.20.20.4'
  }
  {
    IpAddress: '10.20.20.5'
  }
]

//PUBLIC IP
var appGwPublicIpName = '${applicationGatewayName}-pip'

//ADMIN IP
param sourceAddressPrefix string = '84.83.9.144' //(my wifi ip)

//STORAGE ACCOUNT 
param stgName string = 'jamalv2storageaccount'

//VM SCALE SET
//VM CREDENTIALS
param adminUsername2 string
param adminPassword2 string

//DISC ENCRYPTION
param dskEncrKey string

//NAMES
var nicname = '${WebVMssName}nic'
var ipConfigName = '${WebVMssName}ipconfig'
param WebVMssName string = 'WebVMss'
param computerNamePrefix string = 'WebVM'
// param osDiskName string = '${WebVMssName}osDisk' __OSDISK NAME WAS NOT ALLOWED


///////////////////////////////___EXISTING RESOURCES___///////////////////////////////////////////

resource mngId 'Microsoft.ManagedIdentity/userAssignedIdentities@2018-11-30' existing = {
  name:  'ZenTIAadmin'
}


resource stg 'Microsoft.Storage/storageAccounts@2021-08-01' existing = {
  name: stgName
}




////////////////////////////////////////////////////////////////////
////////______________________RESOURCES_________________________////
////////////////////////////////////////////////////////////////////



//VNET
resource vnet2 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: virtualNetworkName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        vnetAddressPrefix
      ]
    }
    subnets: [
      {
        name: subnetName1
        properties: {
          addressPrefix: subnetPrefix1
        }
      }
      {
        name: subnetName2
        properties: {
          addressPrefix: subnetPrefix2
        }
      }
    ]
  }
}


//PUBLIC IP I
resource publicIP 'Microsoft.Network/publicIPAddresses@2021-05-01' = {
  name: appGwPublicIpName
  location: location
  // zones: [
  //   '2'
  // ]
  sku: {
    name: 'Standard'
  }
  properties: {
    publicIPAddressVersion: 'IPv4'
    publicIPAllocationMethod: 'Static'
    idleTimeoutInMinutes: 4
  }
}

// //PUBLIC IP II
// resource NATpublicIP 'Microsoft.Network/publicIPAddresses@2021-05-01' = {
//   name: 'pipOutbound'
//   location: location
//   // zones: [
//   //   '2'
//   // ]
//   sku: {
//     name: 'Standard'
//   }
//   properties: {
//     publicIPAddressVersion: 'IPv4'
//     publicIPAllocationMethod: 'Static'
//     idleTimeoutInMinutes: 4
//   }
// }

//NETWORK SECURITY GROUP
resource nsg2 'Microsoft.Network/networkSecurityGroups@2021-05-01' = {
  name: nsgName
  location: location
  dependsOn: [
    vnet2
    VMss
    applicationGateway
  ]
  properties: {
    securityRules: [
      //INBOUND
      {
        name: 'HTTPin'
        properties: {
          description: 'HTTP-rule'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '80'
          sourceAddressPrefix: 'Internet'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 100
          direction: 'Inbound'
        }
      }
      {
        name: 'HTTPSin'
        properties: {
          description: 'HTTPS-rule'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: 'Internet'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 120
          direction: 'Inbound'
        }
      }
      {
        name: 'sshin'
        properties: {
          description: 'ssh-rule'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '22'
          sourceAddressPrefix: sourceAddressPrefix
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 160
          direction: 'Inbound'
        }
      }
      {
        name: 'GatewayManager'
        properties: {
          description: 'GatewayManager'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '65200-65535'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 180
          direction: 'Inbound'
        }
      }
      //OUTBOUND
      {
        name: 'sshout'
        properties: {
          description: 'ssh-rule'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '22'
          sourceAddressPrefix: sourceAddressPrefix
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 200
          direction: 'Outbound'
        }
      }
      {
        name: 'HTTPSout'
        properties: {
          description: 'HTTPS-rule'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: 'Internet'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 220
          direction: 'Outbound'
        }
      }
    ]
  }
}

// resource natgw 'Microsoft.Network/natGateways@2021-05-01' = {
//   dependsOn: [
//     vnet2
//     nsg2
//     VMss
//     AppGWsub
//   ]
//   name: 'NATgateway'
//   location: location
//   sku: {
//     name: 'Standard'
//   }
//   properties: {
//     idleTimeoutInMinutes: 4
//     publicIpAddresses: [
//       {
//         id: NATpublicIP.id
//       }
//     ]
//   }
// }

//WEB SUBNET
resource websub 'Microsoft.Network/virtualNetworks/subnets@2021-05-01' = {
  name: subnetName1
  properties: {
    addressPrefix: subnetPrefix1
    networkSecurityGroup: {
      id: nsg2.id
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
  parent: vnet2
}

//APPLICATION GATEWAY SUBNET
resource AppGWsub 'Microsoft.Network/virtualNetworks/subnets@2021-05-01' = {
  name: subnetName2
  properties: {
    addressPrefix: subnetPrefix2
    networkSecurityGroup: {
      id: nsg2.id
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
  parent: vnet2
}


//NETWORK INTERFACE CONTROLLER
// resource webnic 'Microsoft.Network/networkInterfaces@2021-05-01' = {
//   name: 'webnic1'
//   location: location
//   properties: {
//     ipConfigurations: [
//       {
//         name: 'ipconfig2'
//         properties: {
//           subnet: {
//             id: websub.id
//           }
//           privateIPAllocationMethod: 'Dynamic'
//         }
//       }
//     ]
//     networkSecurityGroup: {
//       id: nsg2.id
//     }
//   }
// }


//APPLICATION GATEWAY
resource applicationGateway 'Microsoft.Network/applicationGateways@2021-05-01' = {
  name: applicationGatewayName
  location: location
  // zones: [
  //   '2'
  // ]
  properties: {
    sku: {
      name: appGwSize
      tier: appGwSize
    }
    autoscaleConfiguration: {
      minCapacity: minCapacity
      maxCapacity: maxCapacity
    }
    gatewayIPConfigurations: [
      {
        name: 'appGatewayIpConfig'
        properties: {
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', vnet2.name, subnetName2)
            // id: websub2.id
          }
        }
      }
    ]
    probes:[
      {
        name: 'healthprobe80'
        properties:{
          protocol:'Http'
          host: '127.0.0.1'
          path: '/'
          interval: 60
          timeout: 60
          unhealthyThreshold: 5
        }
      }
      {
        name: 'healthprobe443'
        properties:{
          protocol:'Https'
          host: '127.0.0.1'
          path: '/'
          interval: 60
          timeout: 60
          unhealthyThreshold: 5
        }
      }
    ]
    sslCertificates: [
      {
        name: '${applicationGatewayName}SslCert'
        properties: {
          data: loadFileAsBase64('../misc/cert_key/ZentiaCert1.pfx')
          password: 'Passw0rd!'
        }
      }
    ]
    sslPolicy:{
      policyType: 'Custom'
      minProtocolVersion:'TLSv1_2'
      cipherSuites: [
        'TLS_RSA_WITH_AES_128_CBC_SHA256'
        'TLS_RSA_WITH_AES_128_GCM_SHA256'
        'TLS_RSA_WITH_AES_256_CBC_SHA256'
      ]
    }
    frontendIPConfigurations: [
      {
        name: 'appGatewayFrontendIP'
        properties: {
          publicIPAddress: {
            id: publicIP.id
          }
        }
      }
    ]
    frontendPorts: [
      {
        name: 'FrontEndhttpPort80'
        properties: {
          port: 80
        }
      }
      {
        name: 'FrontEndhttpsPort443'
        properties: {
          port: 443
        }
      }
    ]
    backendAddressPools: [
      {
        name: 'appGatewayBackendPool'
        properties: {
          backendAddresses: backendIPAddresses
        }
      }
    ]
    backendHttpSettingsCollection: [
      {
        name: 'HTTPBackEnd'
        properties: {
          port: 80
          protocol: 'Http'
          cookieBasedAffinity: 'Disabled'
          probeEnabled: true
          probe: {
            id: resourceId('Microsoft.Network/applicationGateways/probes', applicationGatewayName, 'healthprobe80')
          }
        }
      }
      {
        name: 'HTTPsBackEnd'
        properties: {
          port: 443
          protocol: 'Https'
          cookieBasedAffinity: 'Disabled'
          probeEnabled: true
          probe:{
            id: resourceId('Microsoft.Network/applicationGateways/probes', applicationGatewayName, 'healthprobe443')
          }
        }
      }
    ]
    httpListeners: [
      {
        name: 'HttpListener'
        properties: {
          frontendIPConfiguration: {
            id: resourceId('Microsoft.Network/applicationGateways/frontendIPConfigurations/', applicationGatewayName, 'appGatewayFrontendIP')
          }
          frontendPort: {
            id: resourceId('Microsoft.Network/applicationGateways/frontendPorts/', applicationGatewayName, 'FrontEndhttpPort80')
          }
          protocol: 'Http'
        }
      }
      {
        name: 'HttpsListener'
        properties: {
          frontendIPConfiguration: {
            id: resourceId('Microsoft.Network/applicationGateways/frontendIPConfigurations/', applicationGatewayName, 'appGatewayFrontendIP')
          }
          frontendPort: {
            id: resourceId('Microsoft.Network/applicationGateways/frontendPorts/', applicationGatewayName, 'FrontEndhttpsPort443')
          }
          protocol: 'Https'
          sslCertificate: {
            id: resourceId('Microsoft.Network/applicationGateways/sslCertificates/', applicationGatewayName, '${applicationGatewayName}SslCert')
          }
        }
      }
    ]
    requestRoutingRules: [
      {
        name: 'httpPort80rule'
        properties: {
          ruleType: 'Basic'
          httpListener: {
            id: resourceId('Microsoft.Network/applicationGateways/httpListeners', applicationGatewayName, 'HttpListener')
          }
          redirectConfiguration: {
            id: resourceId('Microsoft.Network/applicationGateways/redirectConfigurations/', applicationGatewayName, 'httpToHttps')
          }
        }
      }
      {
        name: 'httpsPort443rule'
        properties: {
          ruleType: 'Basic'
          httpListener: {
            id: resourceId('Microsoft.Network/applicationGateways/httpListeners', applicationGatewayName, 'HttpsListener')
          }
          backendAddressPool: {
            id: resourceId('Microsoft.Network/applicationGateways/backendAddressPools', applicationGatewayName, 'appGatewayBackendPool')
          }
          backendHttpSettings: {
            id: resourceId('Microsoft.Network/applicationGateways/backendHttpSettingsCollection', applicationGatewayName, 'HTTPBackEnd')
          }
        }
      }
    ]
    redirectConfigurations: [
      {
        name: 'httpToHttps'
        properties: {
          redirectType: 'Permanent'
          targetListener: {
            id: resourceId('Microsoft.Network/applicationGateways/httpListeners/', applicationGatewayName, 'HttpsListener')
          }
          includePath: true
          includeQueryString: true
          requestRoutingRules: [
            {
              id: resourceId('Microsoft.Network/applicationGateways/requestRoutingRules/', applicationGatewayName, 'httpPort80rule')
            }
          ]
        }
      }
    ]
  }
}





//VIRTUAL MACHINE SCALE SET WITH SSH 
//HEALTH EXTENSION
//WEBSCRIPT EXTENTION
resource VMss 'Microsoft.Compute/virtualMachineScaleSets@2021-11-01' = {
  name: WebVMssName
  location: location
  dependsOn: [
    applicationGateway
  ]
  // zones: [
  //   '2'
  // ]
  sku: {
    name: 'Standard_B1s'
    tier: 'Standard'
  }
  properties: {
    overprovision: true
    upgradePolicy: {
      mode: 'Automatic'
    }
    orchestrationMode: 'Uniform'
    scaleInPolicy: {
    rules:[
      'OldestVM'
    ]
  }
    virtualMachineProfile: {
      storageProfile: {
        osDisk: {
          // name: 'webvmssstorage'
          osType: 'Linux'
          createOption: 'FromImage'
          caching: 'ReadWrite'
          managedDisk: {
            storageAccountType: 'StandardSSD_LRS'
            diskEncryptionSet: {
              id: dskEncrKey
            }
          }
        }
        imageReference: {
          publisher: 'Canonical'
          offer: 'UbuntuServer'
          sku: '18.04-LTS'
          version: 'latest'
        }
      }
      extensionProfile: {
        extensions: [
          {
            name: 'HealthExtension'
            properties: {
              autoUpgradeMinorVersion: true
              publisher: 'Microsoft.ManagedServices'
              type: 'ApplicationHealthLinux'
              typeHandlerVersion: '1.0'
              settings: {
                protocol: 'http'
                port: 80
                requestPath: '/'
              }
            }
          }
          // {
          //   name: 'WebPaginascript'
          //   properties:{
          //     publisher: 'Microsoft.Azure.Extensions'
          //     type: 'CustomScript'
          //     typeHandlerVersion: '2.1'
          //     autoUpgradeMinorVersion: true
          //     protectedSettings: {
          //       managedIdentity:{
          //         '${mngId.id}':{}
          //       }
          //       fileUris:[
          //         'https://${stgName}.blob.${environment().suffixes.storage}/website/index.html'
          //       ]
          //     }
          //   }
          // }
        ]
      }
      osProfile: {
        computerNamePrefix: computerNamePrefix
        adminUsername: adminUsername2
        adminPassword: adminPassword2
        customData: loadFileAsBase64('../misc/webinstallscript.sh')
        linuxConfiguration: {
          disablePasswordAuthentication: true
          ssh:{
            publicKeys:[
              {
                path: '/home/${adminUsername2}/.ssh/authorized_keys'
                keyData: loadTextContent('../misc/cert_key/xyz_keyp.pub')
              }
            ]
          }
        }
      }
      networkProfile: {
        networkInterfaceConfigurations: [
          {
            name: nicname
            properties: {
              primary: true
              ipConfigurations: [
                {
                  name: ipConfigName
                  properties: {
                    subnet: {
                      id: '${vnet2.id}/subnets/${subnetName1}'
                    }
                    primary: true
                    applicationGatewayBackendAddressPools: [
                      {
                      id: resourceId('Microsoft.Network/applicationGateways/backendAddressPools', applicationGatewayName, 'appGatewayBackendPool')
                        // id: '${applicationGateway.id}/backendAddressPools/${bePoolName}'
                      }
                    ]
                  }
                }
              ]
            }
          }
        ]
      }
    }
    
  automaticRepairsPolicy: {
    enabled: true
    gracePeriod: 'PT10M'
  }
  platformFaultDomainCount: 1
  }
}



//AUTOSCALE SETTING
resource autoScaleSettings 'microsoft.insights/autoscalesettings@2015-04-01' = {
  name: 'cpuautoscale'
  location: location
  properties: {
    name: 'cpuautoscale'
    targetResourceUri: VMss.id
    enabled: true
    profiles: [
      {
        name: 'vmScaleSettings'
        capacity: {
          minimum: '1'
          maximum: '3'
          default: '1'
        }
        rules: [
          {
            metricTrigger: {
              metricName: 'Percentage CPU'
              metricNamespace: ''
              metricResourceUri: VMss.id
              timeGrain: 'PT1M'
              timeWindow: 'PT5M'
              timeAggregation: 'Average'
              operator: 'GreaterThan'
              threshold: 70
              statistic: 'Average'
            }
            scaleAction: {
              direction: 'Increase'
              type: 'ChangeCount'
              value: '1'
              cooldown: 'PT5M'
            }
          }
          {
            metricTrigger: {
              metricName: 'Percentage CPU'
              metricNamespace: ''
              metricResourceUri: VMss.id
              timeGrain: 'PT1M'
              timeWindow: 'PT5M'
              timeAggregation: 'Average'
              operator: 'LessThan'
              threshold: 30
              statistic: 'Average'
            }
            scaleAction: {
              direction: 'Decrease'
              type: 'ChangeCount'
              value: '1'
              cooldown: 'PT5M'
            }
          }
          {
            scaleAction: {
              cooldown: 'PT5M'
              direction: 'Increase'
              type: 'ChangeCount'
              value: '1'
            }
            metricTrigger: {
              metricName: 'CurrentConnections'
              // metricResourceUri: applicationGateway.id
              metricResourceUri: resourceId('Microsoft.Network/applicationGateways', applicationGatewayName)
              operator: 'GreaterThan'
              statistic: 'Sum'
              threshold: 2500
              timeAggregation: 'Average'
              timeGrain: 'PT1M'
              timeWindow: 'PT5M'
              dividePerInstance: true
            }
          }
          {
            scaleAction: {
              cooldown: 'PT5M'
              direction: 'Decrease'
              type: 'ChangeCount'
              value: '1'
            }
            metricTrigger: {
              metricName: 'CurrentConnections'
              metricResourceUri: applicationGateway.id
              operator: 'LessThanOrEqual'
              statistic: 'Sum'
              threshold: 2500
              timeAggregation: 'Average'
              timeGrain: 'PT1M'
              timeWindow: 'PT10M'
              dividePerInstance: true
            }
          }
        ]
      }
    ]
  }
}

