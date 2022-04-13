# ***[Azure Database (+Managed instance)](https://docs.microsoft.com/en-us/azure/azure-sql/database/features-comparison)***  

Hoge Beschikbaarheid is ingebouwd in SQL Managed Instance en kan niet worden beheerd door gebruikers. SQL Managed Instance heeft automatische back-ups, zodat gebruikers volledige database COPY_ONLY back-ups kunnen maken. Log- en bestandssnapshotback-ups worden niet ondersteund.

Een SQL Managed Instance(beheerd exemplaar) wordt gemaakt in een eigen VNet zonder openbaar eindpunt. Voor toegang tot clientapplicaties kun je een virtuele machine maken in hetzelfde VNet (met een ander subnet) met een punt-naar-site VPN-verbinding met het VNet maken vanaf de clientcomputer met behulp van een van deze snelstartgidsen:

- Schakel openbaar eindpunt in op jouw SQL Managed Instance om rechtstreeks vanuit uw omgeving toegang te krijgen tot jouw gegevens.
- Maak Azure Virtual Machine in het SQL Managed Instance VNet voor connectiviteit van clientapplicaties, inclusief SQL Server Management Studio.
- Stel een punt-naar-site VPN-verbinding in met uw door SQL Managed Instance vanaf jouw clientcomputer waarop je SQL Server Management Studio en andere clientverbindingsapplicaties hebt. Dit is een van de twee andere opties voor connectiviteit met jouw SQL Managed Instance en het bijbehorende VNet. De andere optie kan er gebruikt gemaakt worden van een expresroute via een site-naar-site-verbinding vanaf jouw lokale netwerk.


____


##   ***Waar is Azure Database voor?***  
- Azure SQL Managed Instance is ontworpen voor klanten die een groot aantal apps willen migreren van een on-premises of IaaS, zelfgebouwde of door ISV geleverde omgeving naar een volledig beheerde PaaS-cloudomgeving, met zo min mogelijk migratie-inspanningen. Met behulp van de volledig geautomatiseerde Azure Data Migration Service kunnen klanten hun bestaande SQL Server-instantie optillen en verplaatsen("Lift and Shift") naar SQL Managed Instance, die compatibiliteit biedt met SQL Server en volledige isolatie van klantinstanties met native VNet-ondersteuning.

##   ***Hoe past Azure Database / vervangt Azure Database in een klassieke setting?***  
- In de klassieke setting voorzie je de infrastructuur, het platform, de software, backups en toegankelijkheid zelf. Via Azure Managed Instance heb je al deze handelingen in een beschikbare oplossing.

##   ***Hoe kan ik Azure Database combineren met andere diensten?***  
- Afhankelijk van jouw applicaties, zijn de applicaties die je nodig hebt, zowel infrastructuur, opslag en vermogen in computing, voorzien van een stabiel en altijd beschikbare dienst via Azure Managed Instances. Je kunt de Managed Instance koppelen met Azure Database Migration Service, die de bestanden kan 

##   ***Wat is het verschil tussen Azure Database en andere gelijksoortige diensten?***  
- Azure SQL Managed Instance is een intelligent, schaalbaar clouddatabaseservice die de compatibiliteit van SQL Server-database-engines combineert met alle voordelen van een volledig beheerd en groenblijvend platform as a service. Doordat de Managed Instances een 'groenblijvend' platform als dienst is, zorgd het ervoor dat de data en gebruikte diensten altijd beschikbaar is voor een lange periode tijd. Soortgelijke diensten zijn niet zo voortdurend als een Managed Instance.


-----


##   ***Waar kan ik deze dienst vinden in de console?***  
> Via Azure SQL, kan je kiezen om een Managed Instance aan te maken.  
![Managed Instance in Portal](https://user-images.githubusercontent.com/95616021/149675161-0760201f-97ac-4eb5-8af1-e61ac53082bc.jpg)  


##   ***Hoe zet ik deze dienst aan?***  
- Na het configuren van de managed instance, word er een VNET aangemaakt, een NSG aangewezen met de geconfigureerde computing kracht en opslag. Na "Create' wordt de Managed Instance gedeployed en is de dienst eigelijk al aan.


##   ***Hoe kan ik deze dienst koppelen aan andere resources?***  
- Je kunt ervoor kiezen om de applicatie in de cloud te hosten met behulp van Azure App Service of een aantal van de virtuele netwerk-geïntegreerde opties van Azure, zoals Azure App Service Environment, Azure Virtual Machines en virtuele-machine Scale Sets. Je kunt ook voor een hybride cloudbenadering kiezen en uw applicaties on-premises houden. Welke keuze je ook maakt, je kunt deze koppelen aan Azure SQL Managed Instance.  

In overleg met de learning coaches hebben we ervoor gekozen de managed instance niet aan te maken, maar wel in te zien. Hier is voor gekozen omdat de diensten prijzig zijn.  

## **Bronnen**  
[Create a managed Instance](https://docs.microsoft.com/en-us/azure/azure-sql/managed-instance/instance-create-quickstart)  
[Azure Database vs Managed instance](https://docs.microsoft.com/en-us/azure/azure-sql/database/features-comparison)  