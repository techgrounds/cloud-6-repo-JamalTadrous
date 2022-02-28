$templateFile = 'main.bicep'
$today = Get-Date -Format 'MM-dd-yyyy'
$deploymentName = "sub-scope-$today"
$virtualNetworkName = 'rnd-vnet-001'
$virtualNetworkAddressPrefix = '10.0.0.0/24'

New-AzSubscriptionDeployment `
  -Name $deploymentName `
  -Location westeurope `
  -TemplateFile $templateFile `
  -virtualNetworkName $virtualNetworkName `
  -virtualNetworkAddressPrefix $virtualNetworkAddressPrefix

`
____________________________________________DeploymentScript syntax_________________________________________________________

$templateFile = 'main.bicep'
$today = Get-Date -Format 'MM-dd-yyyy'
$deploymentName = "deploymentscript-$today"
New-AzResourceGroupDeployment `
  -ResourceGroupName $resourceGroupName `
  -Name $deploymentName `
  -TemplateFile $templateFile

// after deployment, use:

$fileUri = (Get-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -Name $deploymentName).Outputs.fileUri.Value
Invoke-RestMethod $fileUri

&
Get-AzDeploymentScriptLog -ResourceGroupName $resourceGroupName -Name CopyConfigScript

Remove-AzResourceGroup -Name $resourceGroupName

_________________ remove the policy resources + resourceGroup_____________________________

$subscriptionId = (Get-AzContext).Subscription.Id

Remove-AzPolicyAssignment -Name 'DenyFandGSeriesVMs' -Scope "/subscriptions/$subscriptionId"
Remove-AzPolicyDefinition -Name 'DenyFandGSeriesVMs' -SubscriptionId $subscriptionId
Remove-AzResourceGroup -Name ToyNetworking


_________________ remove resourceGroup_____________________________

Remove-AzResourceGroup -Name MyResourceGroup -Verbose