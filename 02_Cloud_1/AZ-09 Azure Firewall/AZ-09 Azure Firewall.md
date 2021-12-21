# **AZ-09 Azure Firewall**  
Azure Firewall is een beheerde, cloudgebaseerde netwerkbeveiligingsservice die de Azure Virtual Network-resources beschermt.  
Het is een volledig stateful firewall-as-a-service met ingebouwde hoge beschikbaarheid en onbeperkte schaalbaarheid van de cloud.  
Je kunt toepassings- en netwerkconnectiviteitsbeleid maken, afdwingen en registreren voor abonnementen en virtuele netwerken.  
Naast de firewall, kan je ook in Azure gebruik maken van NSGs ("Network Security Groups) en hiermee al bescherming toepassen aan de diensten waar je van gebruikt maakt.  

## **Key-terms**  

- **Azure Firewall:** Stateful  
- **Stateful Firewall:**  
Stateful betekent dat er een herinnering aan het verleden is. Eerdere transacties worden onthouden en kunnen van invloed zijn op de huidige transactie. Dat betekend dus dat alles wordt gelogd en en je kunt inzien wat er is gebeurd.

- **Stateless Firewall:**  
Statelesss betekent dat er geen herinnering aan het verleden is. Elke transactie wordt uitgevoerd alsof het voor de allereerste keer wordt gedaan.

- **NSG:**  
Azure Network Security Groups (NSG's) is een netwerkbeveiligingsservice waarmee verkeer van en naar Azure VNet kan worden verfijnd.  
Het is een OSI layer 3 & 4 netwerkbeveiligingsdienst. Een Azure NSG bestaat uit verschillende beveiligingsregels die gebruikers kunnen toestaan of weigeren.  
Deze regels worden geëvalueerd op basis van de 5-tuple hash. Deze 5-tuple hash(encryptie soort) neemt waarden over van het source-IP-adres, het sourcepoortnummer, het destination-IP-adres, het doelpoortnummer en het protocoltype dat in gebruik is. U kunt NSGs koppelen aan een VNet- of VM-netwerkinterface.  

## **Opdracht**  
- Zet een webserver aan. Zorg dat de poorten voor zowel SSH als HTTP geopend zijn.
- Maak een Azure Firewall in VNET. Zorg ervoor dat je webserver nog steeds bereikbaar is via HTTP, maar dat SSH geblokkeerd wordt.


### **Gebruikte bronnen**  
[Microsoft Azure Docs - Firewall](https://docs.microsoft.com/en-us/azure/firewall/firewall-faq#:~:text=What%20is%20Azure%20Firewall%3F%20Azure%20Firewall%20is%20a,and%20log%20application%20and%20network%20connectivity%20policies%20)  
[Azure Firewall](https://social.technet.microsoft.com/wiki/contents/articles/53658.azure-security-firewall-vs-nsg.aspx)  
[Stateless vs Statefull](https://www.redhat.com/en/topics/cloud-native-apps/stateful-vs-stateless)  
[Network Security Groups](https://www.apps4rent.com/blog/azure-firewall-vs-network-security-groups-nsgs/)  


### **Ervaren problemen**  
Voorafgaand hebben twee van mijn peers de opdracht al gemaakt en in overleg met een learning coach,
besproken om Firewalls wel te bestuden, maar ook NSGs in te schakelen en hiermee de opdracht uit te voeren.  
Doordat we dit konden gebruiken, hebben we geen problemen ervaren. Het aanwijzen van de restricties is vrij
straightforward.  

### **Resultaat**  
Opdracht 1: Zet een webserver aan. Zorg dat de poorten voor zowel SSH als HTTP geopend zijn.  

        1   Ik maak hier een nieuwe VM aan met de condities om port22 voor SSH en port80 voor HTTP, toegang te geven  
            om open te gaan.
![aanmaken vm3](https://user-images.githubusercontent.com/95616021/146954579-e0ac6ed3-70a4-4fb1-a77e-7c7717063d39.jpg)  

        2   Hier heb ik de VM aanstaan en de SSH en HTTP poorten kunnen benutten. 
            Dat kun je zien doordat de Webpagina via de HTTP poort heeft Apache Ubuntu default pagina geladen  
            en de Terminal die via SSH gebruikt kan worden, staat ook open en klaar voor gebruik.
![VM3   webrequest up and running via ssh en http](https://user-images.githubusercontent.com/95616021/146955157-f6ee113d-33d3-47c4-9310-ffb15c2447b9.jpg)  

Opdracht 2:  
Maak een Azure Firewall in VNET. Zorg ervoor dat je webserver nog steeds bereikbaar is via HTTP, maar dat SSH geblokkeerd wordt.  
  
![NSG voor vm3](https://user-images.githubusercontent.com/95616021/146957713-241dee28-2516-454e-8ce6-ed5b637bbe3b.jpg)  

![VM3 NSG ssh denied](https://user-images.githubusercontent.com/95616021/146956497-68eaba5d-e504-40e2-9918-f14be78bc547.jpg)  
![VM ssh request denied by NSG](https://user-images.githubusercontent.com/95616021/146956523-96580841-5756-48d3-a7a7-24120a4040ee.jpg)  





