param location string = resourceGroup().location

//VNET
param virtualNetworkName string = 'app-prod-vnet'
param vnetAddressPrefix string = '10.20.0.0/16'

//SUBNET
param subnetName string = 'ApplicationGatewaySubnet'
param subnetPrefix string = '10.20.0.0/24'

//NSG2
param nsgName string = 'webNSG'
//APPGW

param applicationGatewayName string = 'XYZwebAGW'

//AUTOSCALING
param minCapacity int = 1
param maxCapacity int = 3

//BACKEND
param backendIPAddresses array = [
  {
    IpAddress: '10.20.0.4'
  }
  {
    IpAddress: '10.20.0.5'
  }
]

//PUBLIC IP
var appGwPublicIpName = '${applicationGatewayName}-pip'

//APPGW NAME/SIZE
var appGwSize = 'Standard_v2'


//APPGW



////////////////////////////////////////////////////////////////
////______________________RESOURCES_________________________////
////////////////////////////////////////////////////////////////



////////////////////////__VNET__////////////////////////////////

resource vnet2 'Microsoft.Network/virtualNetworks@2020-06-01' = {
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
        name: subnetName
        properties: {
          addressPrefix: subnetPrefix
          // networkSecurityGroup: {
          //   properties: {
          //     securityRules: [
          //       {
          //         properties: {
          //           direction: 'Inbound'
          //           protocol: '*'
          //           access: 'Allow'
          //         }
          //       }
          //       {
          //         properties: {
          //           direction: 'Outbound'
          //           protocol: '*'
          //           access: 'Allow'
          //         }
          //       }
          //     ]
          //   }
          // }
        }
      }
    ]
  }
}


////////////////////////__PUBLIC IP__////////////////////////////////

resource publicIP 'Microsoft.Network/publicIPAddresses@2020-06-01' = {
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


////////////////////////__NETWORK SECURITY GROUP__////////////////////////////////

resource nsg2 'Microsoft.Network/networkSecurityGroups@2021-05-01' = {
  name: nsgName
  location: location
  dependsOn: [
    vnet2
  ]
  properties: {
    securityRules: [
        {
        name: 'HTTP'
        properties: {
          description: 'HTTP-rule'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '80'
          sourceAddressPrefix: 'Internet'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 700
          direction: 'Inbound'
        }
      }
      {
        name: 'HTTPS'
        properties: {
          description: 'HTTPS-rule'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: 'Internet'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 500
          direction: 'Inbound'
        }
      }
      {
        name: 'rdp'
        properties: {
          description: 'rdp-rule'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '3389'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 300
          direction: 'Inbound'
        }
      }
      {
        name: 'ssh'
        properties: {
          description: 'ssh-rule'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '22'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 200
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
          priority: 100
          direction: 'Inbound'
        }
      }
    ]
  }
}



////////////////////////__SUBNET__////////////////////////////////
resource websub2 'Microsoft.Network/virtualNetworks/subnets@2021-05-01' = {
  name: subnetName
  properties: {
    addressPrefix: subnetPrefix
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



////////////////////////__NETWORK INTERFACE CONTROLLER__////////////////////////////////

resource nic2 'Microsoft.Network/networkInterfaces@2020-06-01' = {
  name: 'webnic1'
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig2'
        properties: {
          subnet: {
            id: websub2.id
          }
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: publicIP.id
          }
        }
      }
    ]
    networkSecurityGroup: {
      id: nsg2.id
    }
  }
}






////////////////////////__APPLICATION GATEWAY__////////////////////////////////






resource applicationGateway 'Microsoft.Network/applicationGateways@2020-06-01' = {
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
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', vnet2.name, subnetName)
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
          interval: 30
          timeout: 30
          unhealthyThreshold: 3
        }
      }
      {
        name: 'healthprobe443'
        properties:{
          protocol:'Https'
          host: '127.0.0.1'
          path: '/'
          interval: 30
          timeout: 30
          unhealthyThreshold: 3
        }
      }
    ]
    sslCertificates: [
      {
        name: '${applicationGatewayName}SslCert'
        properties: {
          data: loadFileAsBase64('../misc/cert_key/XYZcertwpw.pfx')
          password: '123'
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






////////////////////////////////////////___VM SCALE SET___///////////////////////////////////////
//PARAMS


//VM
param adminUsername2 string
param adminPassword2 string

//DISC ENCRYPTION
param dskEncrKey string


var bePoolName = '${WebVMssName}bepool'
var nicname = '${WebVMssName}nic'
var ipConfigName = '${WebVMssName}ipconfig'

param WebVMssName string = 'WebVMss'


//SCALE SET RESOURCE 
resource WebVMss 'Microsoft.Compute/virtualMachineScaleSets@2020-06-01' = {
  name: WebVMssName
  location: location
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
    virtualMachineProfile: {
      storageProfile: {
        osDisk: {
          name: 'webvmstorage'
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
        ]
      }
      osProfile: {
        computerNamePrefix: WebVMssName
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
                      id: '${vnet2.id}/subnets/${subnetName}'
                    }
                    primary: true
                    applicationGatewayBackendAddressPools: [
                      {
                      id: resourceId('Microsoft.Network/applicationGateways/backendAddressPools/', applicationGatewayName, bePoolName)
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
    gracePeriod: 'PT5M'
  }
  platformFaultDomainCount: 1
  }
}



////////////////////////////////////////___SCALE SETTING___///////////////////////////////////////

resource autoScaleSettings 'microsoft.insights/autoscalesettings@2015-04-01' = {
  name: 'cpuautoscale'
  location: location
  properties: {
    name: 'cpuautoscale'
    targetResourceUri: WebVMss.id
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
              metricResourceUri: WebVMss.id
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
              metricResourceUri: WebVMss.id
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
              metricResourceUri: applicationGateway.id
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
