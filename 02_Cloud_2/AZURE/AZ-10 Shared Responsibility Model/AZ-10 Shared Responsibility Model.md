# **AZ-10 Shared Responsibility Model**  
## *Introductie:*  
Het cloud shared responsibility model onderverdeeld de verantwoordelijkheden van de CSP  
en de gebruiker van de service die verleend word. De verantwoordelijkheden zijn onder te verdelen  
in 3 categorieen. 

## **Key-terms**  
> ***Software as a Service*** (SaaS):  
dit is het model waarbij een cloudconsument via internet toegang heeft tot de software van de cloudserviceprovider.  
Een voorbeeld van de software is Microsoft Office 365, dat u een reeks zakelijke productiviteitsservices biedt,  
waaronder instant messaging en videoconferentietool (Skype for Business Online), e-mailmessagingtool (Exchange Online), samenwerking en het delen van bestanden (SharePoint Online en OneDrive) . De cloudconsument beheert geen onderliggende cloudinfrastructuur, inclusief netwerk, server, besturingssysteem, opslag. De cloudconsument heeft mogelijk toegang tot beperkte softwareconfiguratie-instellingen (bijvoorbeeld SharePoint Online Centraal Beheer).  

> **Platform as a Service** (PaaS):  
meer gedetailleerde controle dan het SaaS-model, cloudconsument krijgt toegang tot ontwikkelplatform, webserver of database-instantie. De cloudconsument heeft mogelijk toegang tot de uitbreidbaarheidsmodule, bibliotheek en tools van de cloudserviceprovider om een ​​robuustere applicatie te ontwikkelen die wordt gehost op de onderliggende cloudinfrastructuur. De cloudconsument heeft nog steeds geen controle over netwerk, server, opslag en besturingssysteem.  

> **Infrastructure as a Service** (IaaS):  
In het IaaS-model biedt Microsoft Azure netwerk-, opslag-, server- en virtualisatietechnologieën om u te helpen bij het bouwen van uw eigen gevirtualiseerde infrastructuur. U hebt uw eigen beslissing om het besturingssysteem, de gegevens en de toepassing te kiezen. U kunt de grootte van een virtuele machine kiezen die u nodig heeft en deze implementeren op Microsoft Azure. U kunt ook het gewenste besturingssysteem (bijv. Windows Server 2012) specificeren. U kunt ook configureren voor hoge beschikbaarheid voor uw werkbelastingimplementatie (bijv. SharePoint-farmimplementatie).

## **Opdracht & Resultaat**  
- Bestudeer het Azure Responsibility Model.  

**Bevindingen:**  

> Voor alle soorten cloudimplementaties ben je de eigenaar van jouw gegevens en identiteiten.  
Je bent tevens verantwoordelijk voor het beschermen van de beveiliging van jouw gegevens en identiteiten,  on-premises bronnen en de cloudcomponenten die je beheert (dit verschilt per servicetype). 
Ongeacht het type inzet blijven de volgende verantwoordelijkheden altijd bij jou: 
>- Gegevens  
>- Endpoints; o.a. PCs en Smartdevices zoals Mobiel en Tablets.  
>- Gebruikersaccount  
>- Toegangsbeheer  

> De Cloud Service Provider is verantwoordelijk voor het leveren, onderhouden en optimaliseren  
van de Software dat aangeboden en gebruikt word. De gebruiker is verantwoorlijk voor het  
juist gebruiken van de dienst en dient deze niet te misbruiken en/of aan te passen.  

> Wanneer er gebruik maakt word van bijvoorbeeld een platform als dienst, waarin aanpasbare  
functies aan te pas komen, wordt de gebruiker meer verantwoordelijkheid voor het eindproduct.  
De aangegeven richtlijnen en diensten zijn al vooraf vrijgesteld door de provider. Dit is tevens  
het parameter waarin de gebruiker moet werken. In dit geval hoort dee provider een goed werkend product te leveren en de richtlijnen goed te configureren zodat de klant geen misbruik kan maken van de dienst of ongewenste aanpassingen kan toepassen.  

> De Cloud Service Provider(CSP) is verantwoordelijk voor het Infrastructuur van de diensten.  
Hieronder wordt verstaan dat de fysieke attributen, zoals Datacenters in genoeg mogelijke locaties,  
met genoeg vermogen worden voorzien om alle applicaties, informatie en verkeer te verwerken.  

### Gebruikte bronnen  

[Shared responsibility Model](https://azsec.azurewebsites.net/2017/05/18/security-shared-responsibility-in-azure-iaas/)


