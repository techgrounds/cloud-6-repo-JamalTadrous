# Cloud Fundamentals Week 4 - Azure Cosmos DB  


> ***[CosmosDB](https://docs.microsoft.com/en-us/azure/cosmos-db/introduction)***  

## **Key-Terms**
    - **Dedicated provisioned throughput mode**  
     The throughput provisioned on a container is exclusively reserved for that container and it is backed by the SLAs.  

    - **Shared provisioned throughput mode**  
    These containers share the provisioned throughput with the other containers in the same database (excluding containers that have been configured with dedicated provisioned throughput). In other words, the provisioned throughput on the database is shared among all the “shared throughput” containers.  
    - ***UDFs***  
    User-Defined Functions. Net als functies in programmeertalen, zijn door de gebruiker gedefinieerde functies van SQL Server routines die parameters accepteren, een actie uitvoeren, zoals een complexe berekening, en het resultaat van die actie als een waarde retourneren. De geretourneerde waarde kan een enkele scalaire waarde of een resultaatset zijn.


> Consistency Models
    - strong
    - bounded staleness
    - session
    - consistent prefix
    - eventual


-   ***Waar is CosmosDB voor?***  

Azure Cosmos DB is een volledig beheerde NoSQL-database voor moderne app-ontwikkeling.  
Cosmos DB is ontworpen om lage latentie, elastische schaalbaarheid van doorvoer, goed gedefinieerde semantiek voor gegevensconsistentie en hoge beschikbaarheid te bieden.  

-   ***Hoe past CosmosDB / vervangt CosmosDB in een klassieke setting?***  


-   ***Hoe kan ik CosmosDB combineren met andere diensten?***  


-   ***Wat is het verschil tussen CosmosDB en andere gelijksoortige diensten?***  



-----


-   ***Waar kan ik deze dienst vinden in de console?***  


-   ***Hoe zet ik deze dienst aan?***  


-   ***Hoe kan ik deze dienst koppelen aan andere resources?***  






> What is the use of Cosmos DB in Azure?  

Image result for what is azure cosmos db
Azure Cosmos DB is commonly used within web and mobile applications, and is well suited for modeling social interactions, integrating with third-party services, and for building rich personalized experiences. The Cosmos DB SDKs can be used build rich iOS and Android applications using the popular Xamarin framework.

> Azure Cosmos DB:  

-   Fully managed database service with turnkey global distribution and transparant
    multi master replication.  
-   Its a document database.  
-   JSON format, is an open-standard file format that uses human-readable text,  
    to transmit date objects, consisting of attribute-value pairs and array data.  

> Azure cosmos DB Key Features Overview:  
-   Turnkey Global Distribution  
-   Regioonal Presence ( available in 54+ regions)  
-   Always ON; 99,99% availability.  
-   Elastic scale;  
-   Low latency guerantee  
-   Consistency Options; chose the right balance between  
    performance and consistent replication.  
-   No schema or index management;   
-   Multiple APIs  
    -   SQL (a core api)  
    -   Cassandra  
    -   MongoDB  
    -   Gremlin (Graphs)  
    -   Azure Table storage.  

> Cosmos DB Structure:  

> Request Units:
The cost of all database operations is normalized by Azure Cosmos DB and is expressed by Request Units (or RUs in short).

You can think of RUs per second as the currency for throughput.

> Partitions:
In partitioning, the items in a container are divided into distinct subsets called
logical partitions.
There are two type of partitions:
Logical and Physical.

> SQL API  
Azure cosmos DB SQL API accounts support querying items using  
'Structured Query Language (SQL) as a JSON query Language.




### Gebruikte bronnen  
-   [Azure App Service](https://www.youtube.com/watch?v=vfLN-P8H0KA)  
-   [Azure CosmosDB](https://www.youtube.com/watch?v=R_Fi59j6BMo)  

