# Handleiding Techgrounds/Sentia Project 1.1
### Author: Jamal Tadrous 
### Date: 24/03/2022

Voor het uitvoeren van het script dient u gebruik te maken van Powershell

[Install URL](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2#msi)

## Bicep extensie

### Controleer of bicep al is geinstalleerd op de lokale client
    
    bicep 
    --version

### Installeer bicep in Powershell

Set policy

    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

Install bicep    

    Install-Module 
    -Name Az 
    -Scope CurrentUser 
    -Repository PSGallery 
    -Force

## Azure CLI

[Install URL](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)

### Installeer Project v1.1

Indien u beschikt over een eigen SSH-sleutel, kan deze aangepast worden in de Key Vault
module en de Webserver module. De sleutels staan aangewezen in parameters en zijn makkelijk aan te passen. Zorg dat je de SSH sleutel in een folder hebt die je makkelijk kunt bereiken.  
Het SSL certificaat staat in de Webserver Module's  parameters onder 'param sslcert string'.

De web installatie script staat onder de miscellaneous map (misc) genaamd webinstallscript.sh. De content kan natuurlijk aangepast worden naar een uitgebreidere installatie voor de webserver.

Met RDP/SSH is het mogelijk in te loggen in de Windows VM.
U kunt de Gebruikers gegevens en paswoord aanpassen in de Main template.. 

In de Windows omgeving mogelijk een CLI naar keuze te installeren/openen en via deze CLI in te loggen op de webserver via SSH/RDP.


## Extra PowerShell commando's

Maak een connectie met Azure

    Connect-AzAccount

Verkrijg het abonnementsID:

    Get-AzSubscription

Stel een standaardabonnement in:

    $context = Get-AzSubscription -SubscriptionName {YOUR SUBSCRIPTION}
    Set-AzContext $context

Wijzigen actieve abonnement:

    $context = Get-AzSubscription -SubscriptionId {YOUR SUBSCRIPTION}
    Set-AzContext $context

Wijzig standaard Resource Group:

    Set-AzDefault 
    -ResourceGroupName {YOUR RESOURCEGROUP}

Importeren sjabloon

    New-AzResourceGroupDeployment 
    -TemplateFile ******.bicep

Controle deployment:

    Get-AzResourceGroupDeployment -ResourceGroupName {YOUR RESOURCEGROUP} | Format-Table

Opzetten Subscriptie

    New-AzSubscriptionDeployment 
        -Name {INSERT}
        -Location {INSERT}
        -TemplateFile {INSERT}
        -rgName {INSERT}
        -rgLocation {INSERT}

## VM SKU

Met de volgende commando's is het mogelijk om de verschillende versies van Azure-ondersteunende besturingssystemen te zien

Lijst van uitgevers:

    $locName="<location>"
    Get-AzVMImagePublisher 
    -Location $locName

Lijst van offers van uitgever

    $pubName="<publisher>"
    Get-AzVMImageOffer 
    -Location $locName 
    -PublisherName $pubName

Lijst van ondersteunde SKU van offer 

    $offerName="<offer>"
    Get-AzVMImageSku 
    -Location $locName 
    -PublisherName $pubName 
    -Offer $offerName 

Lijst van versies van SKU van offer

    $skuName="<SKU>"
    Get-AzVMImage 
    -Location $locName 
    -PublisherName $pubName 
    -Offer $offerName 
    -Sku $skuName 


## Deploying the infrastructure:

Zorg dat u zich in de directory bevind in de terminal, waar het main.bicep bestand staat. 
Om het infrastructuur te creeren: 

Login Azure met de syntax: 
az-login

*Voeg de volgende syntax in de powershell Terminal: *

Get-Date -Format 'yyyy-MM-dd'
$templateFile = 'main.bicep'
$deploymentName = "Zentiacloudkit"   <- Naam voor deployment is aanpasbaar.
$Location = 'westeurope'

New-AzSubscriptionDeployment `
-ResourceGroupName ZenTia `
-Name $deploymentName `
-Location $Location `
-TemplateFile $templateFile