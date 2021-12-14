# Protocols
Een protocol is een set regels voor het opmaken en verwerken van gegevens.  
Netwerkprotocollen zijn als een gemeenschappelijke taal voor computers. De computers binnen een netwerk kunnen enorm veel verschillende software en hardware gebruiken; het gebruik van protocollen stelt hen echter in staat om hoe dan ook met elkaar te communiceren.

## Key-terms
-   OSI model  
"Open System Interconnection" is gemaakt zodat computers met elkaar kunnen 
communiceren en bestanden kunnen verzenden. Het OSI model geeft aan, in welke lagen, welke componenten, welk process behandeld word in het versturen van gegevens. Het OSI model is onder te verdelen in 7 lagen.  

        -   7   -   Applicatie laag (Application layer)  
        Mens-computer interactielaag, waar toepassingen toegang hebben tot de netwerkservice. 
        De plek waar gebruikers daadwerkelijk communiceren met de computer.  

        -   6   -   Presentatie laag (Presentation layer)  
        Deze laag is verantwoordelijk voor het voorbereiden van gegevens zodat deze door de toepassingslaag kunnen worden gebruikt; met andere woorden, laag 6 maakt de gegevens toonbaar voor toepassingen om te consumeren. 
        De presentatielaag is verantwoordelijk voor de vertaling, versleuteling en compressie van gegevens.

        -   5   -   Sessie laag (Session layer)  
        Dit is de laag die verantwoordelijk is voor het openen en sluiten van de communicatie tussen de twee apparaten. De tijd tussen het openen en sluiten van de communicatie staat bekend als de sessie. 
        De sessielaag zorgt ervoor dat de sessie lang genoeg open blijft om alle gegevens die worden uitgewisseld over te dragen en sluit vervolgens de sessie onmiddellijk om te voorkomen dat bronnen worden verspild.

        -   4   -   Transport laag (Transport layer)  
        Laag 4 is verantwoordelijk voor end-to-end communicatie tussen de twee apparaten. Dit omvat het nemen van gegevens uit de sessielaag en deze opsplitsen in brokken die segmenten worden genoemd voordat deze naar laag 3 worden verzonden. 
        De transportlaag op het ontvangende apparaat is verantwoordelijk voor het opnieuw monteren van de segmenten tot gegevens die de sessielaag kan verbruiken.

        -   3   -   Netwerk laag    (Network layer)  
        De netwerklaag - laag 3 -is verantwoordelijk voor het vergemakkelijken van gegevensoverdracht tussen twee verschillende netwerken. Als de twee apparaten die communiceren zich op hetzelfde netwerk bevinden, is de netwerklaag overbodig. 
        De netwerklaag breekt segmenten van de transportlaag op in kleinere eenheden, pakketten(pakkets) genoemd, op het apparaat van de afzender en stelt deze pakketten opnieuw in elkaar op het ontvangende apparaat.
        De netwerklaag vindt ook het beste fysieke pad voor de gegevens om hun bestemming te bereiken; dit staat bekend als routing.

        -   2   -   Datalink laag   (Data Link Layer)  
        De datalinklaag - laag 2 - lijkt sterk op de netwerklaag, behalve dat de datalinklaag gegevensoverdracht tussen twee apparaten op hetzelfde netwerk mogelijk maakt. De datalinklaag neemt pakketten van de netwerklaag en breekt ze op in kleinere stukken die frames worden genoemd. Net als de netwerklaag is de datalinklaag ook verantwoordelijk voor flow control en error control in intra-network communicatie (de transportlaag doet alleen flow control en error control voor inter-network communicatie).

        -   1   -   Fysieke laag    (Physical layer)  
        Deze laag - laag 1 - omvat de fysieke apparatuur die betrokken is bij de gegevensoverdracht, zoals de kabels en schakelaars. Dit is ook de laag waar de gegevens worden omgezet in een bitstream, een reeks van 1s en 0s. De fysieke laag van beide apparaten moet het ook eens worden over een signaalconventie, zodat de 1s op beide apparaten van de 0s kunnen worden onderscheiden.


-   TCP/IP:  
'Three way handshake'  
Het Internet Protocol (IP) is het adressysteem van het internet en heeft de kernfunctie van het leveren van informatiepakketten van een bronapparaat aan een doelapparaat. IP is de primaire manier waarop netwerkverbindingen tot stand worden gebracht en het legt de basis van het internet. IP verwerkt geen pakketvolgorde of foutcontrole. Dergelijke functionaliteit vereist een ander protocol, meestal TCP.  
De 'Three way handshake' is een proces dat in een TCP/IP-netwerk wordt gebruikt om een verbinding te maken tussen de server en de client. Het is een proces in drie stappen waarbij zowel de client als de server synchronisatie- en bevestigingspakketten moeten uitwisselen voordat het echte gegevenscommunicatieproces begint.  
  (IP is het deel dat het adres verkrijgt waarnaar gegevens worden verzonden. TCP is verantwoordelijk voor de levering van gegevens zodra dat IP-adres is gevonden.)

-   SYN:  
SYN (Synchronize) wordt gebruikt om een verbinding tot stand te brengen en tot stand te brengen. Het helpt u ook om volgnummers tussen apparaten te synchroniseren.

-   ACK:  
ACK (Acknowledge) Helpt om aan de andere kant te bevestigen dat het de SYN heeft ontvangen.

-   SYN-ACK:  
Met de SYN-ACK (Synchronize-Acknowledgement) bevestigt de client de reactie van de server en ze maken allebei een stabiele verbinding om het eigenlijke gegevensoverdrachtproces te starten.

-   FIN:  
FIN (Finish) wordt gebruikt voor het beëindigen van een verbinding.

-   UDP:  
'User Datagram protocol' is een 'stateless protocol'. Het wordt ingezet waar de pakketten een grote hoeveelheid bandbreedte vereisen, samen met de werkelijke gegevens. Bij videostreaming is het erkennen van duizenden pakketten bijvoorbeeld lastig en verspilt het veel bandbreedte. In het geval van videostreaming kan het verlies van sommige pakketten geen probleem vormen en kan het ook worden genegeerd. Dit principe defineerd de term 'Fire and Forget'.  

-   Stateless:  
Een stateless protocol houd in dat de afzender niet de bevestiging krijgt dat het pakket dat is verzonden is ontvangen.  

-   Stateful:  
Stateful Protocol is een netwerkprotocol waarin als de client een verzoek naar de server stuurt, het een soort reactie verwacht, in het geval van geen reactie, het verzoek opnieuw verzendt, tot er daadwerkelijk een verbinding word vastgesteld.

-   HTTP:  
Hypertext Transfer Protocol (HTTP) is het protocol voor de communicatie tussen een webclient (meestal een webbrowser of een app) en een webserver. Dit protocol wordt niet alleen veel op het wereldwijde web gebruikt, maar ook op lokale netwerken (we spreken dan van een intranet).

-   Poort(Port)  
Een poort is een fysiek dockingpunt waarmee een extern apparaat op de computer kan worden aangesloten. Het kan ook een programmatisch koppelingspunt zijn waardoor informatie van een programma naar de computer of via internet stroomt. Een netwerkpoort die wordt geleverd door de Transport Layer-protocollen van de Internet Protocol-suite, zoals TCP (Transmission Control Protocol) en UDP (User Diagram Protocol), is een nummer dat eindpuntcommunicatie tussen twee computers bedient.

## Opdracht  
1   -   Begrijp hoe een HTTPS TCP/IP-pakket opgebouwd is  
2   -   Begrijp wie bepaalt welke protocols wij gebruiken en wat je zelf moet doen om een nieuw protocol te introduceren.  
3   -   Identificeer op zijn minst één protocol per OSI-laag.  
4   -   Facebook was recent een lange tijd niet beschikbaar. Ontdek waarom. Tip: BGP.  

### Gebruikte bronnen
-   https://www.youtube.com/watch?v=CRdL1PcherM  
Video van NetworkChuck. Er wordt uitgelegt hoe het OSI model werkt.  
-   https://www.cloudflare.com/learning/network-layer/what-is-a-protocol/  
Breakdown OSI model.
-   https://www.certificationkits.com/cisco-certification/cisco-ccna-640-802-exam-certification-guide/cisco-ccna-the-osi-model/#:~:text=Cisco%20CCNA%20OSI%20Layer%20%26%20Functions%20The%20OSI,is%20responsible%20for%20data%20translation%20and%20code%20formatting.  
Definities en geschiedenis van het OSI laag.  
-   https://www.cloudflare.com/learning/ddos/glossary/open-systems-interconnection-model-osi/  
Breakdown OSI-model  
-   https://www.guru99.com/tcp-3-way-handshake.html#:~:text=1%20TCP%203-way%20handshake%20or%20three-way%20handshake%20or,ACK%20of%20the%20earlier%20packet.%20More%20items...%20  
Breakdown Three-Way-Handshake.  
-   https://www.javatpoint.com/udp-protocol#:~:text=The%20UDP%20protocol%20allows%20the%20computer%20applications%20to,protocol%20to%20the%20TCP%20protocol%20%28transmission%20control%20protocol%29.  
Breakdown UDP.  
-   https://www.tutorialspoint.com/what-is-network-port  
Breakdown Port definitie.  
-   https://www.cspsprotocol.com/protocols-in-osi-model/
-   https://medium.com/jspoint/a-brief-overview-of-the-tcp-ip-model-ssl-tls-https-protocols-and-ssl-certificates-d5a6269fe29e  
HTTPS 
-   https://cybernews.com/news/why-facebook-went-down-and-what-s-bgp-routing/
Facebook BGP causing outage.


## Ervaren problemen
Het was even zoeken naar de juiste bronnen voor de termen die opgezocht moesten worden en het correct defineerd. Verder geen problemen ervaren.

## Resultaat  

### opdrachten uitwerking:
1   -     De belangrijkste motivaties voor HTTPS zijn authenticatie van de geopende website en bescherming van de privacy en integriteit van de uitgewisselde gegevens tijdens het transport. Het beschermt tegen man-in-the-middle-aanvallen en de bidirectionele codering van communicatie tussen een client en server beschermt de communicatie tegen afluisteren en misbruiken van gegevens. Voor het verificatieaspect van HTTPS is een vertrouwde derde partij vereist om digitale certificaten aan de serverzijde te ondertekenen.  

2   -   De zender zend een aanvraag uit naar de ontvanger en aan de hand van de communicatie die word gemaakt in de applicatielaag, word het type protocol bepaald. - het initieren van een protocol.
    -   Als je letterlijk een nieuwe protocol wil toepassen die ergens in de OSI laag geplaatst moet worden, zou je
    bij het 'Internet Engineering Task Force (IETF) een request kunnen doen. Het is een non-profit organisatie die vrijwillig het internet standaard onderhouden en beheren om het gebruik en in verwerkingsmogelijkheden.

3   -   Protocol voorbeeld per laag.  

        **- Layer 7 - Application:    HTTP (Hypertext Transfer Protocol)**  
        Een client-server model waarbij een webbrowser het middel is waarmee de klant
        kan communiceren met de webserver die de website host.

        **- Layer 6 - Presentation:   SSL (Secure Sockets layer) Protocol**  
        De SSL protocal zorgt ervoor dat de aanvraag met encryptie overhandigd word door de andere lagen en hierdoor het bestand beveiligd tegen verlies van data en beveiligde communicatie.

        **- Layer 5 - Session:        NetBIOS Protocol**  
        NetBIOS biedt drie verschillende services: Naamservice voor naamregistratie en omzetting (poorten: 137/udp en 137/tcp) Datagramdistributieservice voor verbindingsloze communicatie (poort: 138/udp) Sessieservice voor verbindingsgeoriënteerde communicatie (poort: 139/tcp)
        
        **- Layer 4 - Transport:      UDP Protocol**  
        Voor real-time diensten zoals computer gaming, spraak- of videocommunicatie, live conferenties; we hebben UDP nodig. Omdat hoge prestaties nodig zijn, staat UDP toe dat sommige pakketten worden laten vallen in plaats van vertraagde pakketten te verwerken. Dit komt bedoel om latency en bandwith op een bruikbaar niveau te houden.

        **- Layer 3 - Network:        IPv4/IPv6 Protocol**  
         IPv4 is een verbindingsloos protocol dat wordt gebruikt in pakket-switchlaagnetwerken, zoals internet. Deze adressen zijn specifiek en universeel. Met andere woorden, elk adres definieert één en slechts één apparaat op internet.

        **- Layer 2 - Data Link:      NCP (Network Control Protocol) **  
        NCP stelt gebruikers in principe in staat om toegang te hebben tot computers en sommige apparaten op externe locaties en ook om bestanden over te dragen tussen twee of meer computers. Het is over het algemeen een reeks protocollen die deel uitmaakt van PPP(point-to-point protocol).

        **- Layer 1 - Physical:       RS232**  
        RS232 staat voor "Recommended Standard 232" en het is een soort 'serial' communicatie die wordt gebruikt voor het aansluiten van de computer en zijn randapparatuur om seriële gegevensuitwisseling tussen hen mogelijk te maken.  
  
4   -   Facebook was recent een tijd niet beschikbaar. Vele bronnen geven aan dat de Border Gateway Protocol(BGP), misconfigureerd was en hierdoor coordineerde de 'backbone routers' het netwerk verkeerd, ofwel, na de update was het originele DNS niet meer gelinked tot het netwerk en dit zorgde ervoor dat de aanvragen geen directie meer hadden om de DNS op te vragen en een URL uit te kunnen voeren voor de klant. Het DNS was er namelijk niet meer na de misconfiguratie. Dit heeft ervoor gezorgd dat Facebook niet meer beschikbaar was voor een paar uur, samenhangend met de bedrijven die in de overkoepeling vallen van facebook(o.a. Twitter en Instagram). 
  
  --------  

  --------  



  
-   Het OSI model:
![OSI Layers](https://user-images.githubusercontent.com/95616021/145806320-747231e7-3188-49de-92f5-5a058e8d395d.jpg)  
-   Voorbeeld TCP/IP protocol.
![R](https://user-images.githubusercontent.com/95616021/145806452-d62fac29-4f4b-4d07-914c-f2cca3144e1e.jpg)  
-   Three-way-handshake-model.
![TCP3WayHandshake](https://user-images.githubusercontent.com/95616021/145806460-0571b01b-6b22-439b-9a52-d1a704be7840.png)  
[Protocols](https://user-images.githubusercontent.com/95616021/145985378-b91efef6-0911-405f-a2d0-e029db5980ae.jpg)



