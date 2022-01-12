# **AZ-16 Azure Load Balancer & Auto Scaling**  
## ***Introductie***
    Autoscaling is een functie voor cloudcomputing waarmee organisaties cloudservices zoals servercapaciteiten of virtuele machines automatisch omhoog of omlaag kunnen schalen, op basis van gedefinieerde situaties zoals verkeer en gebruiksniveaus.  
    Met automatisch schalen kan een gebruiker een beleid instellen op basis van vooraf gedefinieerde criteria die het aantal beschikbare instanties in zowel piek- als daluren beheren. Dit maakt meerdere instanties met dezelfde functionaliteit mogelijk die afhankelijk van de vraag toenemen of afnemen.  

    Een load balancer daarentegen controleert eenvoudig de status van elke instantie, verdeelt het verkeer en koppelt elk verzoek aan de juiste doelgroepen. Als het een ongezond exemplaar detecteert, stopt een load balancer het verkeer naar dat exemplaar en verzendt het gegevensverzoeken elders. Het voorkomt ook dat een exemplaar wordt overspoeld door verzoeken.  

    De kernfuncties van Auto Scaling maken ook lagere kosten en betrouwbare prestaties mogelijk door het  verhogen en verlagen van nieuwe instanties als de vraag groter word en daalt. Auto Scaling zorgt voor consistentie ondanks de dynamische en soms onvoorspelbare vraag naar applicaties.  

-----

## **Key-terms**  
> ***Predictive Autoscaling***:  
Predictive Autoscaling, ofwel 'Voorspellend automatisch schalen' maakt gebruik van voorspellende analyses, waaronder historische gebruiksgegevens en recente gebruikstrends, om automatisch te schalen op basis van voorspellingen over gebruik in de toekomst. Voorspellende automatische schaling is vooral handig voor:
> - Grote, dreigende pieken in de vraag detecteren en de capaciteit iets van tevoren voorbereiden
> - Omgaan met grootschalige, regionale storingen
> - Biedt meer flexibiliteit bij het in- of uitschalen om te reageren op variabele verkeerspatronen gedurende de dag  
  
  

> ***Scheduled Autoscaling***:  
Scheduled Autoscaling, ofwel 'Geplande automatische schalingen' is een soort hybride benadering voor het schalen van beleid die nog steeds in realtime functioneert, maar ook anticipeert op bekende wijzigingen in de verkeersbelasting en beleidsreacties op die wijzigingen op specifieke tijden uitvoert. Geplande schaling werkt het beste in gevallen waarin bekend is dat het verkeer op bepaalde tijden van de dag afneemt of toeneemt, maar dat de veranderingen in kwestie meestal erg plotseling zijn. Anders dan bij statische schalingsoplossingen, houdt geplande schaling groepen met automatisch schalen "op de hoogte" om snel te reageren tijdens belangrijke tijden met extra capaciteit.  

-----

## **Opdracht**  
**Opdracht 1**:  
-   Maak een Virtual Machine Scale Set met de volgende vereisten:  
Ubuntu Server 20.04 LTS - Gen1  
Size: Standard_B1ls  
Allowed inbound ports:  
SSH (22)  
HTTP (80)  
OS Disk type: Standard SSD  
Networking: defaults  
Boot diagnostics zijn niet nodig  

-   Custom data: 
	#!/bin/bash  
sudo su  
apt update  
apt install apache2 -y  
ufw allow 'Apache'  
systemctl enable apache2  
systemctl restart apache2  
Initial Instance Count: 2  
Scaling Policy: Custom  

-   Aantal VMs: minimaal 1 en maximaal 4  
Voeg een VM toe bij 75% CPU gebruik  
Verwijder een VM bij 30% CPU gebruik  

**Opdracht 2**:  
-   Controleer of je via het endpoint van je load balancer bij de webserver kan komen.
-   Voer een load test uit op je server(s) om auto scaling the activeren.  
Er kan een delay zitten in het creëren van nieuwe VMs, afhankelijk van de settings in je VM Scale Set.  

-----
### **Gebruikte bronnen**  
-   [Types of loadbalancers](https://docs.oracle.com/en-us/iaas/Content/Balance/Concepts/balanceoverview.htm)  
-   [Defining Auto Scaling](https://avinetworks.com/glossary/auto-scaling/)  

-----
### **Ervaren problemen**  



-----
### **Resultaat**  
> Opdracht 1:  
> 1  
![AZ16 - scaling in and out](https://user-images.githubusercontent.com/95616021/148700563-12c98031-df55-4066-932c-3cd9f2771d88.jpg)  

> 2  
![AZ16 - autoscale settings](https://user-images.githubusercontent.com/95616021/148700561-727d9407-0073-433e-a34f-99eebbda1c9e.jpg)  

> 3  
![AZ16 - specs vm autoscale](https://user-images.githubusercontent.com/95616021/148700564-09d3e304-c515-4f7b-bc8f-6eec4ddfe3ad.jpg)  


