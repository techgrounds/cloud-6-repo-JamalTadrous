$templateFile = 'main.bicep'
$deploymentName = "ZenTIA${toLower(utcNow())}"
$Location = 'westeurope'
New-AzSubscriptionDeployment `
-ResourceGroupName ZenTIA${toLower(utcNow())} `
-Name $deploymentName `
-Location $Location `
-TemplateFile $templateFile





# To create the self signed certificate, with RSA encryption and SHA256 HashAlgorithm.
# Created into a .cer format,
# Followed by a a password for accessing the self signed certificate/privatekey.
# And lastly, transformed the .cer certificate into a .pfx format, which includes the certificate and password.

$certname = "XYZcertwpw"
$cert = New-SelfSignedCertificate -Subject "CN=$certname" -CertStoreLocation "Cert:\CurrentUser\My" -KeyExportPolicy Exportable -KeySpec Signature -KeyLength 2048 -KeyAlgorithm RSA -Provider "Microsoft Enhanced RSA and AES Cryptographic Provider" -HashAlgorithm SHA256
Export-Certificate -Cert $cert -FilePath "C:\Users\Jamal\github-classroom\techgrounds\cloud-6-repo-JamalTadrous\PROJECT\ProjectV1_1\misc\cert_key\$certname.cer"
$mypwd = ConvertTo-SecureString -String "123" -AsPlainText -Force -Key (1..16)
Export-PfxCertificate -Cert $cert -FilePath "C:\Users\Jamal\github-classroom\techgrounds\cloud-6-repo-JamalTadrous\PROJECT\ProjectV1_1\misc\cert_key\$certname.pfx" -Password $mypwd








# For creating the sshkey:
ssh-keygen -m PEM -t rsa -b 4096




*****

.\powershellscript.ps1

****



$certname = "XYZcertwpw"
$cert = New-SelfSignedCertificate -Subject "CN=$certname" -CertStoreLocation "Cert:\CurrentUser\My" -KeyExportPolicy Exportable -KeySpec Signature -KeyLength 2048 -KeyAlgorithm RSA -HashAlgorithm SHA256
Export-Certificate -Cert $cert -FilePath "C:\Users\Jamal\github-classroom\techgrounds\cloud-6-repo-JamalTadrous\PROJECT\ProjectV1_1\misc\cert_key\$certname.cer"