remove soft deleted key vault:

Get-AzKeyVault -InRemovedState

Remove-AzKeyVault -VaultName XYZKeyVault01 -InRemovedState -Location westeurope
