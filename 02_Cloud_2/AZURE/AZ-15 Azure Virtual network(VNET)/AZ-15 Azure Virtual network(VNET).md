# **AZ-15 Azure Virtual network(VNET)**  
### ***Introductie:***  
> Een virtueel netwerk is een netwerksysteem dat een fysiek netwerk emuleert door de hardware-  
en softwarenetwerkbronnen te combineren tot één administratieve eenheid.  
Met een virtueel netwerk kunt u de volledige netwerkinfrastructuur programmatisch maken,  
implementeren en beheren via software, terwijl u het onderliggende fysieke netwerk  
gebruikt om de pakketten door te sturen. Het fysieke netwerk wordt beheerd door de CSP  
of als je kiest om dit On-premises te doen, ben jij natuurlijk geheel verantwoordelijk  
voor de topologie en de werkkracht van de fysieke middelen om jouw workload aan te kunnen.  

-----  
## **Key-terms**  
> ***Network Topology***:  
is de rangschikking van knooppunten (nodes) en schakels (links) in een bepaald mechanisme en schema. Met andere woorden, de netwerktopologie is hoe de netwerkcomponenten die de communicatie tussen de apparaten in een netwerk maken, worden geregeld om fouten te verminderen, meer bandbreedtesnelheid te produceren, het netwerk te beveiligen en nog veel meer.  


> ***Physical topology***:  
is de rangschikking van apparaten en andere elementen in een computernetwerk. Het omvat de fysieke lay-out van knooppunten, computers, kabels, samen met de locatie van het apparaat en de installatie van de code.  

> ***Logical topology***:  
is de manier waarop de logische informatiestroom in een netwerk plaatsvindt. Het wordt gedefinieerd door het netwerkprotocol en bepaalt hoe gegevens door het netwerk stromen. Het is de opstelling van interne communicatie tussen apparaten.  

-----  
## **Opdracht**  

### **Opdracht 1:**  
-   Maak een Virtual Network met de volgende vereisten:  
    Region: West Europe  
    Name: Lab-VNet  
    IP range: 10.0.0.0/16  
-   Vereisten voor subnet 1:  
    Name: Subnet-1  
    IP Range: 10.0.0.0/24  
-   Vereisten voor subnet 2:  
    Name: Subnet-2  
    IP Range: 10.0.1.0/24  


### **Opdracht 2:**
-   Maak een VM met de volgende vereisten:  
    Een apache server moet met de volgende custom data geïnstalleerd worden:  
    #!/bin/bash  
    sudo su  
    apt update  
    apt install apache2 -y  
    ufw allow 'Apache'  
    systemctl enable apache2  
    systemctl restart apache2  
    Er is geen SSH access nodig, wel HTTP  
    Subnet: Subnet-2  
    Public IP: Enabled  
-   Controleer of je website bereikbaar is  

-----

### **Gebruikte bronnen**  
[Network Topology](https://www.edrawsoft.com/network-topologies.html)  
[What is a Virtual Network?](https://www.parallels.com/blogs/ras/what-is-a-virtual-network/)  

-----
### **Ervaren problemen**  
-----
> Gezien ik mijn subscriptie deel met Suheri, waren de subnetten al aangewezen.  
Ik heb door dit punt de subnetten wat anders opgesteld dan aangegeven in de opdracht.  
Dit staat vermeld in deze foto:  
![AZ15 - opdracht 1 - IP range VNet en Subnet kan niet](https://user-images.githubusercontent.com/95616021/148687449-f98e9a03-80d3-4ba7-975f-69192e73a69c.jpg)

-----
## **Resultaat**  
-----
### **Opdracht 1:**  
> 1  JamalsVNet ip range
![AZ15 - opdracht 1-1 - JamalsVNet ip range](https://user-images.githubusercontent.com/95616021/148687547-9cd3fff1-e72b-4561-8298-7fc1d000b99b.jpg)  

> 2  JamalsVNet subnets in range
![AZ15 - opdracht 1-2 -JamalsVNet subnets in range](https://user-images.githubusercontent.com/95616021/148687555-50d965dd-f30b-4da4-be15-a10593f37fb0.jpg)  

### **Opdracht 2:**  
> 1  JamalsVM in Vnet met subnet 2 aangewezen.
![AZ15 - opdracht 2 - JamalsVM in Vnet met subnet 2 aangewezen](https://user-images.githubusercontent.com/95616021/148687592-fdf9a0f9-46b7-4088-b0cd-c41f5f774914.jpg)  

> 2  JamalsVM in VNet met subnet 2 en public ip toegewezen, website bereikbaar.
![AZ15 - opdracht 2 - JamalsVM in VNet met subnet 2 en public ip toegewezen  website bereikbaar](https://user-images.githubusercontent.com/95616021/148687602-b09ec99d-f588-476a-a785-22c6cc9e4645.jpg)

