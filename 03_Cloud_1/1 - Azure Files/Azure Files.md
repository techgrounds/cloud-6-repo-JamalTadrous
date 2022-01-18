# **Azure Files**

## ***[Azure Files](https://docs.microsoft.com/en-us/azure/storage/files/storage-files-introduction#why-azure-files-is-useful)***  

###   ***Waar is Azure Files voor?***  

   >   Met Azure File Storage kunt je jouw on-premises bestands- of bestandsshare-gebaseerde applicaties naar Azure migreren zonder dat je zeer beschikbare bestandsserver-VM's hoeft in te richten of te beheren.  

   >  Azure Files biedt volledig beheerde bestandsshares in de cloud die toegankelijk zijn via het industriestandaard Server Message Block (SMB)-protocol of Network File System (NFS)-protocol. Azure Files-bestandsshares kunnen gelijktijdig worden gekoppeld via cloud- of on-premises implementaties. SMB Azure-bestandsshares zijn toegankelijk vanaf Windows-, Linux- en macOS-clients. NFS Azure Files-shares zijn toegankelijk vanaf Linux- of macOS-clients. Bovendien kunnen SMB Azure-bestandsshares in de cache worden opgeslagen op Windows-servers met Azure File Sync voor snelle toegang in de buurt van waar de gegevens worden gebruikt.  

   >   Met Azure Files kun je eenvoudig applicaties naar de cloud tillen en verplaatsen (Lift and shift) die verwachten dat een bestandsshare, bestandsapplicaties of gebruikersgegevens opslaat. Azure Files maakt zowel het 'klassieke' lift- en shift-scenario mogelijk, waarbij zowel de applicatie als de bijbehorende gegevens naar Azure worden verplaatst, evenals het 'hybride' lift- en shift-scenario, waarbij de applicatiegegevens worden verplaatst naar Azure Files en de toepassing on-premises blijft draaien.  

###   ***Hoe past Azure Files / vervangt Azure Files in een klassieke setting?***  

>   Azure Files kan worden gebruikt om traditionele on-premises bestandsservers of NAS-apparaten volledig te vervangen of aan te vullen. De klassieke setting was dat de bestanden en applicaties onderhouden, opgeslagen en voorzien moeten worden door eigen apparatuur. Nu is dat niet noodzakelijk en kan dit overbrugd worden door gebruik te maken van Cloud services van Azure.

###   ***Hoe kan ik Azure Files combineren met andere diensten?***  
> Azure Files kan eenvoudig worden gebruikt vanaf containerplatforms zoals Azure Container Instance (ACI) en Azure Kubernetes Service (AKS) met het ingebouwde CSI-stuurprogramma, naast VM-platforms.  

###   ***Wat is het verschil tussen Azure Files en andere gelijksoortige diensten?***  
> Azure Blob Storage is een objectopslag die wordt gebruikt voor het opslaan van grote hoeveelheden ongestructureerde gegevens, terwijl Azure File Storage een volledig beheerd gedistribueerd bestandssysteem is op basis van het SMB-protocol en eruitziet als een typische harde schijf als deze eenmaal is aangekoppeld.
  
    
  


----
  

  

###   ***Waar kan ik deze dienst vinden in de console?***  

>Je kunt Azure File share vinden onder een tab in je Storage account. Zie bijgevoegde foto:  
![Azure Files Storage account file share1](https://user-images.githubusercontent.com/95616021/149665973-b8082bdc-5236-4087-9022-8c4a3ae62363.jpg)  


###   ***Hoe zet ik deze dienst aan?***   

> Azure Files kan je gebruikt worden wanneer je een Storage account aan hebt gemaakt.  
De storage account is wel al actief, maar er staat niets op. Azure Documentatie gaf aan om
een bestand erin te uploaden en dan wordt Azure Files pas echt in gebruik genomen.  
Hieronder heb ik een voorbeeld. Ik heb een bestand geupload in Azure Files share.
![Storage account file share2](https://user-images.githubusercontent.com/95616021/149664142-a895d8d6-e250-4237-a8c4-89ad135519dd.jpg)



###   ***Hoe kan ik deze dienst koppelen aan andere resources?***  
Je kan je file share aan verschillende dingen koppelen. Je kunt de file share  
aansluiten aan je huidige OS en bijvoorbeeld on-premises (op locatie van de klant), die de bestanden kan importeren en gebruiken. Je sluit de File share aan een VM, die bereikbaar gemaakt word via ene private endpoint en erna aangesloten kan worden met de locatie die toegang nodig heeft. De configuraties moeten afgestemd worden wat ervoor zorgt dat de bestanden beschikbaar zijn van beide endpoints. Je kunt tevens de storage account aansluiten   


## ***Bronnen***  
[Blob Storage vs File Storage](https://www.serverless360.com/blog/azure-blob-storage-vs-file-storage)  
[Installing File share on premises domain](https://www.youtube.com/watch?v=a-Twfus0HWE&t=542s)



