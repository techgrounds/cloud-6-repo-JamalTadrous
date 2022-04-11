Get-Date -Format 'yyyy-MM-dd'
$templateFile = '.\main.bicep'
$deploymentName = "ZenTIAcloudkit"
$Location = 'westeurope'

New-AzSubscriptionDeployment `
-ResourceGroupName Zentiav1 `
-Name $deploymentName `
-Location $Location `
-TemplateFile $templateFile

Get-Date -Format 'yyyy-MM-dd'
$templateFile = 'main.bicep'
$deploymentName = "Zentiacloudkit"
$Location = 'westeurope'

New-AzSubscriptionDeployment `
-ResourceGroupName ZenTiav1 `
-Name $deploymentName `
-Location $Location `
-TemplateFile $templateFile