az Login

Get-Date -Format 'yyyy-MM-dd'
$templateFile = 'main.bicep'
$deploymentName = "Zentiacloudkit"
$Location = 'westeurope'

New-AzSubscriptionDeployment `
-ResourceGroupName ZenTiav1 `
-Name $deploymentName `
-Location $Location `
-TemplateFile $templateFile