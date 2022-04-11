# Project Scope Zentia

In dit document zal ik verduidelijken wat er wordt gevraagd van de eisen van de klant. Ik heb een overzicht gemaakt dat mijn team en ik ophaalden bij de opdrachtgever door middel van de documentatie van het project en een gesprek met de stakeholder.

>In dit project moesten we een klant infrastructuur leveren via code. Het platform dat in mijn geval wordt gebruikt, is Microsoft's Azure, met zijn domeinspecifieke taal genaamd Bicep. De vereisten van v1.1 hebben enkele nieuwe implementaties met betrekking tot v1.0. De webserver moet autoscaling-mogelijkheden hebben. Dit was nodig om het verwachte verkeer op de website/applicatie die de klant wil kunnen laten draaien zonder complicaties en enige vertraging in de ervaring van de klant.

Verder wil de opdrachtgever de volgende belangrijke features in de infrastructuur implementeren:

- Een werkende applicatie die een veilig en beveiligd netwerk kan implementeren.
- Een werkende applicatie die een werkende webserver kan implementeren.
- Een werkende applicatie die een werkende Management-server kan implementeren.
- Een werkende applicatie waarvan de gegevens zijn versleuteld.

----------------------------------------------------------------

**V1.0 vereisten:**

    - Alle VM disks moeten encrypted zijn.
    - De webserver moet dagelijks gebackupt worden. De backups moeten 7 dagen behouden worden.
    - De webserver moet op een geautomatiseerde manier geïnstalleerd worden.
    - De admin/management server moet bereikbaar zijn met een publiek IP.
    - De admin/management server moet alleen bereikbaar zijn van vertrouwde locaties (office/admin’s thuis)
    - De volgende IP ranges worden gebruikt: 10.10.10.0/24 & 10.20.20.0/24
    - Alle subnets moeten beschermd worden door een firewall op subnet niveau.
    - SSH of RDP verbindingen met de webserver mogen alleen tot stand komen vanuit de admin server.


----------------------------------------------------------------

Het infrastructuur van v1.1 bestaat uit de volgende vereisten:

- De webserver moet niet ‘naakt’ op internet kunnen staan. Dit betekent dat de server geen openbaar IP-adres mag hebben. De webserver moet ook een load balancer hebben.
- Wanneer een gebruiker een verbinding maakt via HTTP met de load balancer (een Application Gateway in mijn geval), zou deze de verbinding automatisch moeten upgraden naar HTTPS.
- De verbindingsbeveiligingsnorm heeft een minimumvereiste van TLS 1.2 of hoger.
- De webserver moet een gereguleerde ‘health check’ hebben.
- Als de webserver de gezondheidscontrole niet doorstaat, moet de server automatisch worden hersteld.
- Wanneer de webserver een zware belasting van verkeer zou ondergaan, zou een extra exemplaar van de server moeten worden gemaakt om het gewicht van het verkeer te verdelen.
- De opdrachtgever denkt dat maximaal 3 instances voldoende zijn voor het te verwachten aantal gebruikers.

----------------------------------------------------------------

Dingen om te leveren voor 1.1:

Aangepaste webserver met daarin:
    - Het openbare IP-adres is verwijderd uit v1.0's web server module, zodat het geen direct openbaar IP-adres heeft.
    - Openbare IP moet worden toegewezen aan de Application Gateway.
    - Implementatie van Application Gateway om het verkeer van HTTP naar een beveiligd verkeersprotocol HTTS te leiden en als load balancer fungeert.
    - Creatie van de middelen voor veilig verkeer:
        - Een zelfondertekend certificaat dat later aangepast kan worden met het geleverde certificaat van de klant.
        - Aanwijzingen in de handleiding voor de opdrachtgever om het certificaat dat in het script gebruikt gaat worden, toe te kunnen voegen.
    - Configureren van de netwerkbeveiligingsgroepen(NSG) om het juiste verkeer toe te staan ​​en te weigeren dat nodig is voor een veilig netwerk en het gebruik van de MVP.
    - Bied mogelijkheden voor automatisch schalen aan de virtuele-machineschaalset.
    - Healthprobes en -extensies voor Virtual Machine Scale-set, om de gezondheid te bewaken, de mogelijkheid te bieden om meerdere instanties te hebben om een ​​website uit te voeren en om de doorvoer van verkeer te kunnen verwerken.

----------------------------------------------------------------

- Als team willen wij een duidelijk overzicht van de aannames die wij gemaakt hebben en van de Cloud Infrastructuur die de applicatie nodig heeft.

    - Budget +/- €130 per maand
    - Keyvault nodig voor certificaten en keys/encryptie
    - 2 v-nets in 2 availibilty zones verbonden middels peering
    - subnet met NSG voor webserver
    - subnet met NSG voor adminserver
    - 1 vm webserver met SSH/RDP via adminserver
    - 1 vm adminserver met RDP (SSH optioneel) toegang.
    - storage account
    - 2 firewall(NSG) subnets


# Oplevering

- Een werkende CDK / Bicep app van het MVP
- Ontwerp Documentatie
- Beslissing Documentatie
- Tijd logs
- Eindpresentatie

## Data

Belangrijke data:

|  Onderwerp:  | Datum (projectweek):  |
| --- | --- |
|Start Python, Start Project (v1.0)|07-02-2022 (wk 1)|
|Introductie Project v1.1|14-03-2022 (wk 5)|
|Oplevering- / Eindpresentatie|08-04-2022 (wk 9)|

Hou rekening met de volgende projectactiviteiten:

|Project Activiteit:|Datum (projectweek) :|
| --- | --- |
|Sprint 1 Review progressie app v1.0|25-02-2022 (wk 3)|
|Sprint 2 Review oplevering app v1.0|11-03-2022 (wk 5)|
|Sprint 3 Review progressie app v1.1|25-03-2022 (wk 7)|
|Sprint 4 Review oplevering app v1.1 / Eindpresentatie|08-04-2022 (wk 9)|

## Resources:

- Voor het ontwerpen van je architectuur: [Draw.io](https://draw.io) || [Visual Paradigm](https://online.visual-paradigm.com/diagrams/templates/azure-architecture-diagram/)

- Azure Bicep documentatie: [link](https://docs.microsoft.com/nl-nl/azure/azure-resource-manager/bicep/)

- Azure ARM template documentatie: [link](https://docs.microsoft.com/nl-nl/azure/azure-resource-manager/templates/)

- Azure ARM resource omschrijvingen: [link](https://docs.microsoft.com/en-us/azure/templates/)

- Chocolatey: [link](https://chocolatey.org/install)

- FizzBuzz: [link](https://github.com/EnterpriseQualityCoding/FizzBuzzEnterpriseEdition)



--------------------------------
