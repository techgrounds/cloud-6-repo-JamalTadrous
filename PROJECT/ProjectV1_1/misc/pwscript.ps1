$templateFile = 'main.bicep'
$deploymentName = "XYZv2"
$Location = 'westeurope'

New-AzSubscriptionDeployment `
-ResourceGroupName XYZv1 `
-Name $deploymentName `
-Location $Location `
-TemplateFile $templateFile