# Azure [CosmosDB](https://docs.microsoft.com/en-us/azure/cosmos-db/introduction)  
Azure Cosmos DB is een volledig beheerde NoSQL-database voor moderne app-ontwikkeling.  
  
-----
  
## **Key-Terms**
### ***Dedicated provisioned throughput mode***  
- De doorvoer (throughput) die op een container is ingericht, is exclusief gereserveerd voor die container en wordt ondersteund door de SLA's.

### ***Shared provisioned throughput mode***  
- Deze containers delen de ingerichte doorvoer met de andere containers in dezelfde database (met uitzondering van containers die zijn geconfigureerd met toegewezen ingerichte doorvoer). Met andere woorden, de ingerichte doorvoer in de database wordt gedeeld door alle containers met "gedeelde doorvoer"(shared throughput).  

### ***UDFs***  
- User-Defined Functions: definiëren functies die specifieke taken uitvoeren binnen een groter systeem. UDF's worden vaak gebruikt in SQL-databases en bieden een mechanisme om de functionaliteit van de databaseserver uit te breiden door een functie toe te voegen die kan worden geëvalueerd in SQL-instructies.


### ***SQL & NoSQL***  
- SQL     =   Structured Query Language  
NoSQL   =   Not Only SQL  
SQL is een domeinspecifieke taal die wordt gebruikt bij het programmeren en is ontworpen voor het beheren van gegevens in een relationeel databasebeheersysteem of voor stroomverwerking in een relationeel gegevensstroombeheersysteem. NoSQL, ook wel "Not Only SQL", "No-SQL" genoemd, is een benadering van databaseontwerp die de opslag en het opvragen van gegevens mogelijk maakt buiten de traditionele structuren die in relationele databases worden gevonden.



### ***Provisioned Throughput Resources***
- Ingerichte doorvoerbronnen; zijn Azure Cosmos DB-containers die zijn geconfigureerd in de ingerichte doorvoermodus(provisioned throughput mode) waarbij het aantal ingerichte RU's wordt gefactureerd.  

### ***Rate Limited Requests***  
- zijn aanvragen die een 429-statuscode retourneren van de Azure Cosmos DB-container, wat aangeeft dat verbruikte RU's de ingerichte RU's voor een partitie in de container gedurende een bepaalde seconde hebben overschreden.  

### ***Serverless Resources***  
- zijn Azure Cosmos DB-containers die zijn geconfigureerd in de serverloze modus waarbij het aantal verbruikte RU's wordt gefactureerd.  

>###  Cosmos DB Structure:  

### ***Request Unit (RU)***  
- is een meting van de doorvoer(throughput) in Azure Cosmos DB.  
U kunt RU's per seconde zien als de valuta voor de throughput.

### ***Partitions***  
- Bij partitionering worden de items in een container verdeeld in verschillende subsets, genaamd logische partities.  
Er zijn twee soorten partities:  
Logisch en fysiek.  

### ***SQL API***  
- Azure Cosmos DB SQL API-accounts ondersteunen het opvragen van items met behulp van
'Structured Query Language (SQL) als JSON-querytaal.

> ### ***Consistency Models***  

- strong                /   Krachtig
- bounded staleness     /   Begrensde oudheid
- session               /   Sessie
- consistent prefix     /   Consistent prefix
- eventual              /   Uiteindelijk


> ### ***Azure Cosmos DB key Feature***  
- Kant-en-klare wereldwijde distributie
- Regionale aanwezigheid (beschikbaar in 54+ regio's)
-   Altijd aan; 99,99% beschikbaarheid.
- Elastische schaal;
- Gegarandeerd lage latentie
- Consistentie Opties; koos de juiste balans tussen
    prestaties en consistente replicatie.
- Geen schema- of indexbeheer;

_____


##   ***Waar is CosmosDB voor?***  

- Azure Cosmos DB is een volledig beheerde NoSQL-database voor app-ontwikkeling.  
Cosmos DB is ontworpen om lage latentie, elastische schaalbaarheid van doorvoer, goed gedefinieerde semantiek(door gebruik van geen vaste SQL) voor gegevensconsistentie en hoge beschikbaarheid te bieden. 
Azure Cosmos DB wordt gebruikt binnen web- en mobiele applicaties en is zeer geschikt voor het modelleren van sociale interacties, integratie met services van derden en voor het bouwen van uitgebreide gepersonaliseerde ervaringen.  


##   ***Hoe past CosmosDB / vervangt CosmosDB in een klassieke setting?***  
- CosmosDB zorgt ervoor dat de applicatie ontwikkeling toegankelijk is, goed beschikbaar en versimpeld uitvoerbaar is gemaakt via de Cloud. Om het CosmosDB platform te voorzien aan klanten, hoeft er niets geinstalleerd worden, maar geconfigureerd worden naar personlijk gebruiksvoorkeur zoals je dat zou doen op jouw eigen systeem. Er zitten diverse mogelijkheden in dit platform model, waarmee je bijvoorbeeld jouw applicatie en het verkeer kan monitoren en distribueren naar persoonlijke voorkeur.  

##   ***Hoe kan ik CosmosDB combineren met andere diensten?***  
- CosmosDB kan gebruikt worden via bijvoorbeeld Visual Studio Code, waarin je de code  
kan aanpassen, synchroniseren en uitvoeren. Je kunt in jouw applicatie aansluiten en de data diensten synchroniseren met elkaar, waardoor je jouw gebruiksgegevens gemonitort kan krijgen, bij bijvoorbeeld een Spel als applicatie, waarin de aangepaste en gepersonaliseerde inhoud zoals in-game statistieken, integratie van sociale media en scoreborden met hoge scores geleverd krijgt.  

##   ***Wat is het verschil tussen CosmosDB en andere gelijksoortige diensten?***  
- In vergelijking met SQL Database, CosmosDB is opgesteld en gemaakt om globaal bereikbaar te zijn voor meerdere requests/instanties. Als voorbeeld: SQL database kan circa 4 read only replicas van een individuele SQL Database hanteren. CosmosDB is op dit opzicht veel flexibeler, want er vrijwel geen limiet en je kan jouw voorkeur van SQLs gebruikenen SDKs aanwijzen. CosmosDB is een volledig gemanaged NoSQL database die verschillende SQLs(Structured Querry Languages), APIs(Applications Program Interfaces) en SDKs(Software Development Kits) kan herkennen in integreren. Cosmos geeft ook een URL en die makkelijk toegang verleend.  


-----


##   ***Waar kan ik deze dienst vinden in de console?***  
- In Azure Portal is er een aparte tab voor Azure CosmosDB.
![Azure CosmosDB tab](https://user-images.githubusercontent.com/95616021/149670936-764702e0-df81-4773-80af-95aebde89ef5.jpg)

##   ***Hoe zet ik deze dienst aan?***  
- Je gaat naar Azure Cosmos DB en drukt op Create. Je kiest de API naar jouw voorkeur.
Je kunt kiezen tussen Core SQL( wat verschillende SQLs herkent zoals bijvoorbeeld .NET, Python en Javascript) MongoDB, Cassandra, Azure Table en Gremlin.
1:
![CosmosDB options](https://user-images.githubusercontent.com/95616021/149672266-e5900f86-a569-49cc-82fa-37607592cdc9.jpg)
2:
![Deployed CosmosDB](https://user-images.githubusercontent.com/95616021/149672323-e23d47ec-1c60-4622-a847-f17b5e7c3a60.jpg)



##   ***Hoe kan ik deze dienst koppelen aan andere resources?***  
Voorbeeld uitwerking met Python SQL. De Script in de Data explorer wordt gesynchroniseerd met VSCODE via de aangewezen DNS URL, die handmatig is toegevoegd aan het script. 

> CosmosDB Overview; met aangewezen DNS URL.
![CosmosDB overview](https://user-images.githubusercontent.com/95616021/149672965-b6762a72-12a1-47b4-964c-a202117e9ac8.jpg)


>  CosmosDB Data Explorer Json File script.
![CosmosDB Data explorer JSON file script](https://user-images.githubusercontent.com/95616021/149672876-2ce98b86-97c4-41a0-aa5a-6f64acd39007.jpg)

> Opslaan van cosmosdb url and private key into Python file in VSCode.  
Hierdoor wordt de script die is toegevoegd in de data explorer van de CosmosDB, uit te lezen en aanpasbaar in VSCode. 
![Saving cosmosdb url and pkey into Python file in VSCode](https://user-images.githubusercontent.com/95616021/149672119-043a2e6c-955b-423f-a789-5cfdee890232.jpg)

> Python script via VSCODE- repository en CosmosDB geintegreerd - py script uitgevoerd in terminal vscode - uit te lezen in de Data explorer van de CosmosDB in Azure Portal.
![Python script via VSCODE- repository en CosmosDB geintegreerd - py script uitgevoerd in terminal vscode - uit te lezen in Data explorer in Portal](https://user-images.githubusercontent.com/95616021/149672039-fd10766b-0c69-4177-8a4a-e18df0716e57.jpg)  




____


### Gebruikte bronnen  
-   [Build a Python Applications using an Azure Cosmos DB SQL API account](https://docs.microsoft.com/en-us/azure/cosmos-db/sql/create-sql-api-python)
-   [Azure App Service](https://www.youtube.com/watch?v=vfLN-P8H0KA)  
-   [Azure CosmosDB](https://www.youtube.com/watch?v=R_Fi59j6BMo)  
-   [SQL vs NoSQL](https://circleci.com/blog/SQL-vs-NoSQL-databases/?utm_source=google&utm_medium=sem&utm_campaign=sem-google-dg--emea-en-dsa-maxConv-auth-brand&utm_term=g_-_c__dsa_&utm_content=&gclid=CjwKCAiAlfqOBhAeEiwAYi43F6VN-nc8akiWDmOih_LI4zz3-Upux5zhpj5Db43xPU7wUM9vUqwOtxoCGhcQAvD_BwE)  


