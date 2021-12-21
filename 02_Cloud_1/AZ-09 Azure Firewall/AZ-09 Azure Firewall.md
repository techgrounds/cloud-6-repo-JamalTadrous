# AZ-09 Azure Firewall  



## Key-terms  

- Azure Firewall = Stateful
- Stateful Firewall = 
- Stateless Firewall =

## Opdracht  
- Zet een webserver aan. Zorg dat de poorten voor zowel SSH als HTTP geopend zijn.
- Maak een Azure Firewall in VNET. Zorg ervoor dat je webserver nog steeds bereikbaar is via HTTP, maar dat SSH geblokkeerd wordt.


### Gebruikte bronnen  



### Ervaren problemen  



### Resultaat  
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





