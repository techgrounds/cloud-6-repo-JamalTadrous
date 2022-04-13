# **AZ-01 Azure Global Infrastructure**
De wereldwijde infrastructuur van Azure bestaat uit twee belangrijke onderdelen: fysieke infrastructuur en verbindingsnetwerkonderdelen. Het fysieke component bestaat uit meer dan 200 fysieke datacenters, gerangschikt in regio's en verbonden door een van de grootste onderling verbonden netwerken ter wereld.

Met de connectiviteit van het wereldwijde Azure-netwerk biedt elk van de Azure-datacenters hoge beschikbaarheid, lage latency, schaalbaarheid en de nieuwste ontwikkelingen op het gebied van cloudinfrastructuur, allemaal uitgevoerd op het Azure-platform.
Samen houden deze onderdelen gegevens volledig binnen het vertrouwde Microsoft-netwerk en komt IP-verkeer nooit het openbare internet binnen.


## **Key-terms**
-   **Zonal Services:**  
Een resource kan worden geïmplementeerd in een specifieke, zelfgekozen beschikbaarheidszone(Availability Zone/AZ) om strengere latency- of prestatievereisten te bereiken. Veerkracht wordt zelf ontworpen door applicaties en gegevens te repliceren naar een of meer zones in de regio. Resources kunnen worden vastgemaakt aan een specifieke zone. Virtuele machines, beheerde schijven of standaard IP-adressen kunnen bijvoorbeeld worden vastgemaakt aan een specifieke zone, waardoor de tolerantie wordt vergroot door een of meer exemplaren van bronnen verspreid over zones.  

-   **Zone-redundant services:**  
  Resources worden automatisch gerepliceerd of verdeeld over zones. Zone-redundante services repliceren de gegevens bijvoorbeeld in drie zones, zodat een fout in één zone geen invloed heeft op de hoge beschikbaarheid van de gegevens. 

-   **Always-available services:**  
'Altijd beschikbaar' in alle Azure-regio's en bestand tegen zone-brede uitval en regiobrede uitval. Per regio kunnen er services zijn die verschillen van andere regios waar je gebruik van kan maken (Het is zelfs mogelijk dat jouw Region-Pair andere services bied dan de Region waar je bij voorkeur gebruik van maakt).
  
  
## **Opdracht**  

-       Wat is een Azure Region?  
Elke Azure-regio beschikt over datacenters die zijn geïmplementeerd binnen een door latency gedefinieerde perimeter. Ze zijn verbonden via een speciaal regionaal netwerk met lage latency(wachttijd). Dit ontwerp zorgt ervoor dat Azure-services binnen elke regio de best mogelijke prestaties en beveiliging bieden.

-       Wat is een Azure Availability Zone?  
Azure-regio's en beschikbaarheidszones (Availabilty Zones) zijn ontworpen om te helpen de veerkracht en betrouwbaarheid te bereiken voor bedrijfskritische workloads. Azure onderhoudt meerdere regio's. Deze afzonderlijke afbakeningen definiëren grenzen voor noodherstel en gegevenslocatie in een of meerdere Azure-regio's. Het onderhouden van veel regio's zorgt ervoor dat klanten over de hele wereld worden ondersteund.

-       Wat is een Azure Region Pair?  
Is een relatie tussen 2 Azure-regio's binnen dezelfde geografische regio voor noodhersteldoeleinden. Als een van de regio's een ramp of storing zou ervaren, zullen de services in die regio automatisch failover uitvoeren naar de secundaire regio van die regio in het paar.

-       Waarom zou je een regio boven een andere verkiezen?  
Als een regio aansluit op jouw geografische locatie, is de latency(wachttijd) lager ,snelheid hoger en kan de bandwith (bandbreedte) veel meer van jouw workload verwerken. Dit zorgt voor effectiviteit, sneller je werk kunnen realiseren en het zorgt ervoor dat de beschikbaarheid van de bestanden en service, marginaal hoger is dan in een andere regios.

### **Gebruikte bronnen**
-   https://azure.microsoft.com/en-gb/global-infrastructure/#:~:text=What%20is%20Azure%20global%20infrastructure%3F%20Azure%20global%20infrastructure,of%20the%20largest%20interconnected%20networks%20on%20the%20planet.  
Azure Global infrastructure  
-   https://www.lucidchart.com/blog/what-are-cloud-regions#:~:text=What%20is%20a%20region%3F%20The%20simplest%20explanation%20is,only%20as%20a%20concept%20somewhere%20in%20the%20sky.  
Regions, Availabilty Zones(AZs)

### **Ervaren problemen**
Geen problemen ervaren.

### **Resultaat**  

Na het maken van de opdracht snap ik wat 'Cloud service' Regios, Region Pairs en Availabilty Zones zijn en waarom je er gebruik van zou maken.

Als voorbeeld: Het Region pair van mijn locatie is 'Regional Pair A': North Europe(Ireland) en 'Regional Pair B': West Europe(Netherlands), in het Geografische locatie Europa.  
  
------
------
  
Regions and Availability Zones:
  ![Regions and AZs](https://user-images.githubusercontent.com/95616021/146061747-ee2138ab-56c3-4987-9605-b4e431c415cf.png)
