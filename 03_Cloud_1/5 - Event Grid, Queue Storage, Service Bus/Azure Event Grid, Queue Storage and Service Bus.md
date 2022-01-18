#   ***[Event Grid](https://docs.microsoft.com/en-us/azure/event-grid/overview), [Queue Storage](https://docs.microsoft.com/en-us/azure/storage/queues/storage-queues-introduction), [Service Bus](https://docs.microsoft.com/en-us/azure/service-bus-messaging/service-bus-messaging-overview)***  

##   **Waar is 'Event Grid, Queue Storage, Service Bus' voor?**  
- Azure Event Grid is een Event Grid is een event broker die wordt gebruikt om workloads te integreren die gebruikmaken van event-driven architecturen. Azure Queue Storage is een van de ondersteunde gebeurtenishandlers. Queue storage is een service voor het opslaan van grote aantallen berichten. Je hebt overal ter wereld toegang tot berichten via geverifieerde oproepen met HTTP of HTTPS. Service Bus Service Bus wordt gebruikt om applicaties en services van elkaar te ontkoppelen, wat de volgende voordelen biedt:

    - Taakverdeling tussen werknemers  
    - Veilig routeren en overdragen van gegevens en controle over service- en applicatiegrenzen heen  
    - Coördineren van transactiewerk dat een hoge mate van betrouwbaarheid vereist  

- Er zijn vijf concepten in Azure Event Grid waarmee u aan de slag kunt:  

    Gebeurtenissen - Wat is er gebeurd.  
    Gebeurtenisbronnen - Waar het evenement plaatsvond.  
    Onderwerpen: het eindpunt waar uitgevers gebeurtenissen naartoe sturen.  
    Gebeurtenisabonnementen: het eindpunt of ingebouwde mechanisme om gebeurtenissen te routeren, soms naar meer dan één handler. Abonnementen worden ook door handlers gebruikt om inkomende gebeurtenissen intelligent te filteren.
    Event handlers - De app of service die reageert op de gebeurtenis.

    

##   **Hoe past / vervangt 'Event Grid, Queue Storage, Service Bus' in een klassieke setting?**  




##   **Hoe kan ik 'Event Grid, Queue Storage, Service Bus' combineren met andere diensten?**  



##   **Wat is het verschil tussen 'Event Grid, Queue Storage, Service Bus' en andere gelijksoortige diensten?**  


-----


-   Waar kan ik deze dienst vinden in de console?  


-   Hoe zet ik deze dienst aan?  


-   Hoe kan ik deze dienst koppelen aan andere resources?  


## ***Bronnen:***
[Event Grid Webhook Event Creation](https://docs.microsoft.com/en-us/azure/event-grid/blob-event-quickstart-portal)  
[Service bus to event grid](https://docs.microsoft.com/en-us/azure/service-bus-messaging/service-bus-to-event-grid-integration-concept?tabs=event-grid-event-schema)  



Event Grid is an Azure service that sends HTTP requests to notify you about events that happen in publishers. A publisher is the service or resource that originates the event. For example, an Azure blob storage account is a publisher, and a blob upload or deletion is an event. Some Azure services have built-in support for publishing events to Event Grid.

Service Bus enables cloud-native applications to provide reliable state transition management for business processes. When handling high-value messages that cannot be lost or duplicated, use Azure Service Bus. This service also facilitates highly secure communication across hybrid cloud solutions and can connect existing on-premises systems to cloud solutions.