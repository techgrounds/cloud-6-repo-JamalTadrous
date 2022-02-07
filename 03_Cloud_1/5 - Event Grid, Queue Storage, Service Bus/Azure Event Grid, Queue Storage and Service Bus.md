#   ***[Event Grid](https://docs.microsoft.com/en-us/azure/event-grid/overview), [Queue Storage](https://docs.microsoft.com/en-us/azure/storage/queues/storage-queues-introduction), [Service Bus](https://docs.microsoft.com/en-us/azure/service-bus-messaging/service-bus-messaging-overview)***  

##   **Waar is 'Event Grid, Queue Storage, Service Bus' voor?**  
### ***Event Grid:***  
>  Event Grid is een 'eventing-backplane' die gebeurtenisgestuurde, reactieve programmering mogelijk maakt. Het maakt gebruik van het publish-subscribe-model. Uitgevers zenden gebeurtenissen uit, maar hebben geen verwachting over hoe de gebeurtenissen worden afgehandeld. Abonnees(subscrivers) bepalen zelf welke evenementen ze willen afhandelen.  
Azure Event Grid is dus een event broker die wordt gebruikt om workloads te integreren, die gebruikmaken van event-driven architecturen.  
Event Grid is diep geïntegreerd met Azure-services en kan worden geïntegreerd met services van derden. Het vereenvoudigt het verbruik van evenementen en verlaagt de kosten door de noodzaak van constant pollen te elimineren. Event Grid routeert op efficiënte en betrouwbare wijze gebeurtenissen van Azure- en niet-Azure-resources. Het distribueert de gebeurtenissen naar geregistreerde abonnee-eindpunten. Het gebeurtenisbericht bevat de informatie die u nodig hebt om te reageren op wijzigingen in services en toepassingen. Event Grid is geen gegevenspijplijn en levert niet het werkelijke object dat is bijgewerkt.  

> *Event Grid heeft de volgende kenmerken:*  
- Dynamisch schaalbaar  
- Lage kosten  
- Serverless  
- Minstens één keer bezorgen van een evenement  


### ***Queue Storage:***  
> Azure Queue Storage is een van de ondersteunde gebeurtenishandlers. Queue storage is een service voor het opslaan van grote aantallen berichten. Je hebt overal ter wereld toegang tot berichten via geverifieerde oproepen met HTTP of HTTPS.  
Queue Storage kun je gebruiken om gebeurtenissen te ontvangen die moeten worden opgehaald. U kunt Queue Storage gebruiken als je een langlopend proces hebt dat te lang duurt om te reageren. Door gebeurtenissen naar Queue-opslag te sturen, kan de app gebeurtenissen volgens zijn eigen schema ophalen en verwerken.  

> *Queue Storage heeft de volgende kenmerken:*  
- Eenvoudige, kosteneffectieve, duurzame berichtenwachtrij voor grote werkbelastingen  
- Gegevens toegankelijk via de REST (Representational state) API  
- Uitgebreide clientbibliotheken voor .NET, Java, Android, C++, Node.js, PHP, Ruby en Python  
- de maximale toegestane levensduur is zeven dagen en toegestane grootte van 64Kb.


### ***Service Bus:***  
> Service Bus is een volledig beheerde berichtenbroker voor ondernemingen met berichtenwachtrijen en onderwerpen voor publiceren en abonneren. De service is bedoeld voor bedrijfsapplicaties die transacties, bestellingen, duplicaatdetectie en onmiddellijke consistentie vereisen. Service Bus stelt cloud-native applicaties in staat om betrouwbaar statustransitiebeheer voor bedrijfsprocessen te bieden. Azure Service Bus gebruik je bij het afhandelen van hoogwaardige berichten die niet verloren kunnen gaan of gedupliceerd kunnen worden. Deze service faciliteert ook zeer veilige communicatie tussen hybride cloudoplossingen en kan bestaande on-premises systemen verbinden met cloudoplossingen.  

> *Service Bus heeft de volgende kenmerken:*  
- Betrouwbare asynchrone berichtbezorging (enterprise messaging as a service) waarvoor polling vereist is,  
- Geavanceerde berichtfuncties zoals first-in en first-out (FIFO), batching/sessies, transacties, dode letters, temporele controle, routering en filtering, en duplicaatdetectie  
- Minstens één keer een bericht bezorgen  
- Optionele bestelde bezorging van berichten  






> Diagram Service bus -> Event Grid/EventHubs/Service Bus:
![sbtoeventgriddiagram](https://user-images.githubusercontent.com/95616021/150748589-a0c8fa00-4f8f-40ee-9846-e604266df6f2.png)  

> Het gebruik 
![Comparison of services](https://user-images.githubusercontent.com/95616021/150748898-ca51f851-c7b7-4f7d-b538-64abb01f848b.jpg)



##   **Hoe past / vervangt 'Event Grid, Queue Storage, Service Bus' in een klassieke setting?**  




##   **Hoe kan ik 'Event Grid, Queue Storage, Service Bus' combineren met andere diensten?**  



##   **Wat is het verschil tussen 'Event Grid, Queue Storage, Service Bus' en andere gelijksoortige diensten?**  


-----


-   Waar kan ik deze dienst vinden in de console?  


-   Hoe zet ik deze dienst aan?  


-   Hoe kan ik deze dienst koppelen aan andere resources?  



## **Resultaat**  



## ***Bronnen:***
[Event Grid Azure Docs Exercise](https://docs.microsoft.com/en-us/azure/event-grid/blob-event-quickstart-portal)  
[Choose between Azure messaging services - Event Grid, Event Hubs and Service Bus](https://docs.microsoft.com/en-us/azure/event-grid/compare-messaging-services)  
[Event Grid Webhook Event Creation](https://docs.microsoft.com/en-us/azure/event-grid/blob-event-quickstart-portal)  
[Service bus to event grid](https://docs.microsoft.com/en-us/azure/service-bus-messaging/service-bus-to-event-grid-integration-concept?tabs=event-grid-event-schema)  
[Azure Queue Storage documentation](https://docs.microsoft.com/en-us/azure/storage/queues/storage-queues-introduction)  



Event Grid is an Azure service that sends HTTP requests to notify you about events that happen in publishers. A publisher is the service or resource that originates the event. For example, an Azure blob storage account is a publisher, and a blob upload or deletion is an event. Some Azure services have built-in support for publishing events to Event Grid.

Service Bus enables cloud-native applications to provide reliable state transition management for business processes. When handling high-value messages that cannot be lost or duplicated, use Azure Service Bus. This service also facilitates highly secure communication across hybrid cloud solutions and can connect existing on-premises systems to cloud solutions.