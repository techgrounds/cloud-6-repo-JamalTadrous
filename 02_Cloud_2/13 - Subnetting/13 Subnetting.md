# **Subnetting**  
Een Local Area Network (LAN) wordt vaak uitgedrukt als een reeks IP-adressen. Elk apparaat (host) krijgt zijn eigen adres binnen die reeks. Netwerken hebben een subnetmasker dat bepaalt hoeveel bits van het IP-adres deel uitmaken van het netwerkadres, en hoeveel bits gereserveerd zijn voor de host. Het netwerk kan onderverdeeld worden in twee categorien subnets, Prive en Publiekelijk.

## **Key-terms**  
- **NAT gateway:**  
"Network Address Translator" ofwel het netwerkadres vertaler, kan de prive en publieke ip adressen omschakelen  
en naar/door de juiste route doorverwijzen.  

- **CIDR:**  
"Classless inter-domain routing"(CIDR) is een reeks Internet Protocol-standaarden die wordt gebruikt om unieke identificatiegegevens voor netwerken en individuele apparaten te creëren. Met de IP-adressen kunnen bepaalde informatiepakketten naar specifieke computers worden verzonden. Kort na de introductie van CIDR vonden technici het moeilijk om IP-adressen te volgen en te labelen, dus werd een notatiesysteem ontwikkeld om het proces efficiënter en gestandaardiseerd te maken. Dat systeem staat bekend als CIDR-notation.  

- **Private Subnet:**  
Een privésubnet staat ofwel geen uitgaand verkeer naar het internet toe of heeft een route nodig die al het verkeer via een NAT-gateway tunnelt. Als hier niet gebruik van gemaakt word, blijft het verkeer van het subnet of subnetten binnen in het locale (virtuele) netwerk".  

- **Public Subnet:**  
Een openbaar subnet heeft een uitgaande route die al het verkeer doorstuurt via een internetgateway. Deze kan communiceren met het locale netwerk als de instellen zo zijn geconfigureerd.  

____

## **Opdracht**  
- Maak een netwerkarchitectuur die voldoet aan de volgende eisen:
  - 1 private subnet dat alleen van binnen het LAN bereikbaar is. Dit subnet moet minimaal 15 hosts kunnen plaatsen.
  - 1 private subnet dat internet toegang heeft via een NAT gateway. Dit subnet moet minimaal 30 hosts kunnen plaatsen (de 30 hosts is exclusief de NAT gateway).
  - 1 public subnet met een internet gateway. Dit subnet moet minimaal 5 hosts kunnen plaatsen (de 5 hosts is exclusief de internet gateway).
- Plaats de architectuur die je hebt gemaakt inclusief een korte uitleg in de Github repository die je met de learning coach hebt gedeeld.


### **Gebruikte bronnen**  
[Calculations for Subnet Address](https://www.pluralsight.com/blog/it-ops/simplify-routing-how-to-organize-your-network-into-smaller-subnets?exp=2)  
[CIDR notations](https://whatismyipaddress.com/cidr)  
[variable Length Subnet Mask](https://www.pluralsight.com/blog/it-ops/cisco-ccna-vlsm)  
[Layout voor Subnets met NAT](https://morioh.com/p/e04b2ec89204)  
[Video voor subnets AWS](https://www.youtube.com/watch?v=2TiBt-y5pAQ)  
[Video voor subnets Azure](https://www.youtube.com/watch?v=yghrkFzaYTU&list=PLbzoM7aR7G1nlo3-M30pKeXrZOh5MwScz&index=19)  

### **Ervaren problemen**  
Na wat research te doen, vooral het kijken van beide filmpjes vermeld in de bronnen en voorbeeld Netwerk Diagrammen, 
het ik voor mijn gevoel de opdracht uitgevoerd zonder problemen.  

### **Resultaat**  
In de opdracht werd aangegeven dat wij 3 subnets moesten creeren in een netwerkarchitectuur.  
Twee Subnets waren PriveSubnets, waarvan er eentje alleen bereikbaar is het Local Area Network en  
de ander moest toegang hebben tot het internet via een NAT gateway. De derde Subnet is een Publieke Subnet,  
die via de internet gateway naar het internet toe kan.  
Ik heb mij gehouden aan de minimale vereisten van de opdracht en heb niet de availability zones  (en dergelijken, zoals datacenters) in verwerkt.  
  
*(**Ik heb de Internet gateway wat op de lijn vermeld van het LAN&VPC, want daardoor was de text 'Internet Gateway' leesbaar.**)*  

-        1   De 1e Private Subnet moest minimaal 15 hosts kunnen plaatsen. De Prefix size, voor de hoeveelheid adressen met deze context, is /28 en geeft 16 adressen beschikbaar.  

-        2   De 2e Private Subnet moest minimaal 30 hosts kunnen plaatsen. De Prefix size, voor de hoeveelheid adressen met deze context, is /27 en geeft 32 adressen vrij. Waarvan er een adres aangewezen moet worden aan de NAT Gateway.  

-        3   De Public Subnet moest minimaal 5 hosts kunnen plaatsen. De Prefix size, voor de hoeveelheid adressen met deze context, is /29 en geeft 8 adressen beschikbaar.  

![Network Diagram drawio](https://user-images.githubusercontent.com/95616021/147143836-ff1a8b5d-92d1-41b7-8546-9665cdaec6ab.png)  






