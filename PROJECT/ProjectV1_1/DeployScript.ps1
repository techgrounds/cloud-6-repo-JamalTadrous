
Get-Date -Format 'yyyy-MM-dd'
$templateFile = '.\main.bicep'
$deploymentName = "XYZ-cloudkit"
$Location = 'westeurope'

New-AzSubscriptionDeployment `
-ResourceGroupName JamsProjexV2 `
-Name $deploymentName `
-Location $Location `
-TemplateFile $templateFile

