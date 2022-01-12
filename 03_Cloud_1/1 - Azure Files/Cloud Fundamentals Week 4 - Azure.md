# **Cloud Fundamentals Week 4 - Azure Files**

## ***[Azure Files](https://docs.microsoft.com/en-us/azure/storage/files/storage-files-introduction#why-azure-files-is-useful)***  

-   ***Waar is Azure Files voor?***  

   >   Met Azure File Storage kunt u uw on-premises bestands- of bestandsshare-gebaseerde applicaties naar Azure migreren zonder dat u zeer beschikbare bestandsserver-VM's hoeft in te richten of te beheren.  

   >  Azure Files biedt volledig beheerde bestandsshares in de cloud die toegankelijk zijn via het industriestandaard Server Message Block (SMB)-protocol of Network File System (NFS)-protocol. Azure Files-bestandsshares kunnen gelijktijdig worden gekoppeld via cloud- of on-premises implementaties. SMB Azure-bestandsshares zijn toegankelijk vanaf Windows-, Linux- en macOS-clients. NFS Azure Files-shares zijn toegankelijk vanaf Linux- of macOS-clients. Bovendien kunnen SMB Azure-bestandsshares in de cache worden opgeslagen op Windows-servers met Azure File Sync voor snelle toegang in de buurt van waar de gegevens worden gebruikt.  

   >   Met Azure Files kun je eenvoudig applicaties naar de cloud tillen en verplaatsen (Lift and shift) die verwachten dat een bestandsshare, bestandsapplicaties of gebruikersgegevens opslaat. Azure Files maakt zowel het 'klassieke' lift- en shift-scenario mogelijk, waarbij zowel de applicatie als de bijbehorende gegevens naar Azure worden verplaatst, evenals het 'hybride' lift- en shift-scenario, waarbij de applicatiegegevens worden verplaatst naar Azure Files en de toepassing on-premises blijft draaien.  

   ***Hoe past Azure Files / vervangt Azure Files in een klassieke setting?***  

>   Azure Files kan worden gebruikt om traditionele on-premises bestandsservers of NAS-apparaten volledig te vervangen of aan te vullen. De klassieke setting was dat de bestanden en applicaties onderhouden, opgeslagen en voorzien moeten worden door eigen apparatuur. Nu is dat niet noodzakelijk en kan dit overbrugd worden door gebruik te maken van Cloud services van Azure.

-   ***Hoe kan ik Azure Files combineren met andere diensten?***  
> Azure Files kan eenvoudig worden gebruikt vanaf containerplatforms zoals Azure Container Instance (ACI) en Azure Kubernetes Service (AKS) met het ingebouwde CSI-stuurprogramma, naast VM-platforms.  

-   ***Wat is het verschil tussen Azure Files en andere gelijksoortige diensten?***  
> Azure Blob Storage is een objectopslag die wordt gebruikt voor het opslaan van grote hoeveelheden ongestructureerde gegevens, terwijl Azure File Storage een volledig beheerd gedistribueerd bestandssysteem is op basis van het SMB-protocol en eruitziet als een typische harde schijf als deze eenmaal is aangekoppeld.

----

-   ***Waar kan ik deze dienst vinden in de console?***  

>Je kunt Azure File share vinden onder een tab in je Storage account. Zie bijgevoegde foto:  
![Storage account file share2](https://user-images.githubusercontent.com/95616021/148963168-99b9b509-b439-44f7-a218-b937c58fe592.jpg)  


-   ***Hoe zet ik deze dienst aan?***   

> Azure Files kan je gebruikt worden wanneer je een Storage account aan hebt gemaakt.  
De storage account is wel al actief, maar er staat niets op. Azure Documentatie gaf aan om
een bestand erin te uploaden en wordt dan pas echt in gebruik genomen.  

-   ***Hoe kan ik deze dienst koppelen aan andere resources?***  
Je



## ***Bronnen***  
[Blob Storage vs File Storage](https://www.serverless360.com/blog/azure-blob-storage-vs-file-storage)  



