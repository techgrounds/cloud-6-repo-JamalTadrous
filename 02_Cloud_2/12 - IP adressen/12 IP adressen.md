# **IP adressen**
Een IP-adres is een logisch adres dat aan een netwerkapparaat kan worden toegewezen.  
Met de 8 bytes in een IPv4-adres kunnen er 4.294.967.296 adressen zijn.  
Een Internet Protocol (IP) wordt gebruikt om verbinding met internet te maken en apparaten te identificeren, zodat computers, zoals desktops, mobiele apparaten en servers, met elkaar kunnen communiceren.  

## **Key-terms**  
-   **IPv4 & IPv6:**  
InternetProtocol versie 4 en Internet Protocol versie 6.  
Het belangrijkste verschil tussen IPv4 en IPv6 is de adresgrootte van IP-adressen. De IPv4 is een 32-bits adres, terwijl IPv6 een 128-bits hexadecimaal adres is. IPv6 biedt hierdoor een grote adresruimte en bevat een 'eenvoudige header' in vergelijking met IPv4.  
IPv4 wordt tot op heden nog gebruikt. Ook al zijn de IPv4 adressen niet meer te vergeven - *want ze zijn opgemaakt door het grote aantal devices dat over de wereld wordt gebruikt* - door middel van subnetting is het mogelijk gemaakt dat binnen in Locale netwerken aangewezen IP adressen gebruikt kunnen worden, want deze blijven binnen in het netwerk en zorgen dus niet voor een overlappend conflict waardoor het onbruikbaar zou zijn. IPv6 staat al klaar en wordt wel al gebruikt, maar IPv4 is nog steeds relevant.

## **Opdracht**  
- Ontdek wat je publieke IP adres is van je laptop en mobiel op wifi
- Ontdek wat je publieke IP adres is op je mobiel via mobiel internet (als mogelijk)
- Maak een VM in je cloud met een publiek IP. Maak verbinding met deze VM.
- Verwijder het publieke IP adres van je VM. Begrijp wat er gebeurt met je verbinding.

### **Gebruikte bronnen**  
[Google clarifying IPs](https://support.google.com/websearch/answer/1696588?hl=en)  
[IPv4 vs IPv6-1](https://kinsta.com/blog/ipv4-vs-ipv6/)  
[IPv4 vs IPv6-2](https://community.fs.com/blog/ipv4-vs-ipv6-whats-the-difference.html)  

### **Ervaren problemen**  
Geen problemen ervaren.  

### Resultaat  
        1    Wifi Public IP address  
![public ip whatismyipaddress web - wifi](https://user-images.githubusercontent.com/95616021/147097220-97cc9978-8cef-4787-9681-177a8c78b708.jpg)  

        2   Mobile Public IP address  

![public ip whatismyipaddress web - mobiel](https://user-images.githubusercontent.com/95616021/147097466-f4e32854-b9ba-4979-b477-6773366ba0f8.jpg)  

_____  
_____  



         3 & 4   Maak een VM in je cloud met een Publiek IP. Maak verbinding met deze VM.  
         Verwijder het publieke IP adres en begrijp wat er gebeurd met je verbinding.  
-   Zoals de vorige opdrachten heb ik een nieuwe VM aangemaakte met SSH(22) en HTTP(80) poorten open.  
    De geleverde .pem sleutel opgeslagen, geopend met PuTTyGen, en opgeslagen als .ppk (PuTTyPrivateKey-bestand).
    Het invoeren van het IP adres als URL, gaf de Apache website en met het gebruiken van PuTTy kon ik gebruiken maken van de terminal.   

-   In stap/tab 1 kan je zien dat het IPadres nog wordt geassocieerd met het Virtuele Machine.  
-   In stap/tab 2 kan je zien dat het IP adres is verwijderd door middel van de 'Disassociate' functie.  
-   In stap/tab 3 van PuTTy, kan je zien dat ik niet de VM kan openen en de verbinding is verbroken met het IP adres en bijgeleverde sleutel, omdat het ip adres niet meer een relatie heeft met de VM. Hierdoor is het IP adres onbruikbaar en het Virtuele machine niet bruikbaar met dit internet protocol.  

![removing vm ip - 1-2-3steps](https://user-images.githubusercontent.com/95616021/147097246-7b5f9139-7195-41fb-911b-d29c9821e020.jpg)  

