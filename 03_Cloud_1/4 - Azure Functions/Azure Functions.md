# ***[Azure Functions](https://docs.microsoft.com/en-us/azure/azure-functions/functions-overview)***  


##   **Waar is Azure Functions voor?**  
- Azure Function is een service waarmee je geactiveerde code kan uitvoeren zonder infrastructuur te hoeven inrichten of beheren. Je kunt makkelijk een SQL en het type trigger aanwijzen dat je wilt uitvoeren, wat vervolgens naadloos synchroniseerd met een text editor als VSCODE.  
Je kunt Azure Functions gebruiken voor:

    - Herinneringen en meldingen.  
    - Geplande taken en berichten.  
    - Bestandsverwerking.  
    - Gegevens- of gegevensstroomverwerking.  
    - Back-uptaken op de achtergrond uitvoeren.  
    - Backend berekeningen maken.  
    - Lichtgewicht web-API's (MVP's).  

##   **Hoe past Azure Functions / vervangt Azure Functions in een klassieke setting?**  
- Azure Functions is dus een serverloze oplossing waarmee je minder code hoeft te schrijven (omdat veel code van verschillende functie is geintegreerd), minder infrastructuur hoeft te onderhouden en kosten kunt besparen. In plaats van je zorgen te maken over het implementeren en onderhouden van servers, biedt de cloudinfrastructuur alle up-to-date resources die nodig zijn om je applicaties draaiende te houden. 

##   **Hoe kan ik Azure Functions combineren met andere diensten?**  
- In VSCODE kun je een extensie toevoegen, waardoor je Azures diensten kan gebruiken, waaronder Azure Functions. 

##   **Wat is het verschil tussen Azure Functions en andere gelijksoortige diensten?**  

- Azure Functions ondersteunt 'triggers', dit zijn manieren om de uitvoering van je code te starten, en bindingen, dit zijn manieren om codering voor invoer- en uitvoergegevens te vereenvoudigen. Er zijn andere integratie- en automatiseringsservices in Azure en ze kunnen allemaal integratieproblemen oplossen en bedrijfsprocessen automatiseren. Ze kunnen allemaal input, acties, voorwaarden en output definiëren.

-----


##   **Waar kan ik deze dienst vinden in de console?**  
> Locatie in Azure Portal
![FunctionApp locatie](https://user-images.githubusercontent.com/95616021/149677868-92273683-fe7c-49b9-b784-3729ffb82fa7.jpg)  

> Locatie Azure Function in VSCODE. Azure extensie icon, lightningbolt symbool voor "Create Function".
![Azure Functions in VSCode](https://user-images.githubusercontent.com/95616021/149678015-3659ffa7-137d-49d7-9761-3a899cc42c69.jpg)  
  
  
##   **Hoe zet ik deze dienst aan?**  
>Azure Functions zet je aan door een nieuwe functie aan te maken vanuit VSCODE of de Portal in Azure.
In dit voorbeeld maak ik een Function aan via VSCODE, met in dit geval een HTTP trigger. Bij het runnen van de script, wordt de script naar mijn Functions App service in Azure subscription toegewezen en kan het webverzoek uitgevoerd worden.  
![Aanmaak van Function in vscode dat integreerd met azure functionapp](https://user-images.githubusercontent.com/95616021/149678195-24e56e03-0192-4695-95f2-b6bb361c6c70.jpg)  

> Dit is vervolgens terug te vinden in Azure Portal.  
![Function aangemaakt via azure in VSCODE, gedeployed en gesynchroniseerd met Azure Portal](https://user-images.githubusercontent.com/95616021/149678277-d384eaec-f1ed-415f-9c12-52c809d12634.jpg)  
  
> Door de URL van de aangemaakte function te openen, te zien in de volgende screenshots Kan je zien dat de app draait of offline is.  
![Function in Portal Functions app](https://user-images.githubusercontent.com/95616021/149679720-68d44802-0a39-4ca3-9956-140c587fb81a.jpg)  

> ONLINE:  
![Functions App up and running](https://user-images.githubusercontent.com/95616021/149679834-708e426c-9c2b-45b6-b77e-e158674e4ea2.jpg)  

>OFFLINE:  
![App stopped working](https://user-images.githubusercontent.com/95616021/149679867-a7af450a-c2f3-412a-9872-4086893cb4de.jpg)  
  

##   **Hoe kan ik deze dienst koppelen aan andere resources?**  
- Je kunt Azure Functions koppelen vanuit VSCODE zelf. Waar jij het aan wilt koppelen ligt meestal aan het meest voorkomend gebruik. Geplande taken, Herinneringen, meldingen en Lichtgewicht web-API zijn voorbeelden van het gebruik van Functions. Je kiest de programmeertaal naar voorkeur en maakt een functie aan. Via Azure portal kun je terugzien wat je hebt aangemaakt en gepubliceerd hebt naar Azure Portal.  


## **Bronnen**  

- [Creating an Azure Function in VSCODE 1 - Microsoft Docs](https://docs.microsoft.com/en-us/azure/azure-functions/create-first-function-vs-code-python)  
- [Creating an Azure Function in VSCODE 2 - Microsoft Docs](https://docs.microsoft.com/en-us/azure/azure-functions/functions-develop-vs-code?tabs=csharp#generated-project-files)  
- [Azure Functions websearch](https://www.serverless360.com/azure-functions)  
- [Azure Functions information, exercise and tutorials](https://www.c-sharpcorner.com/article/what-is-azure-functions/)  
- [What are MVP's?](https://teamairship.com/what-is-mvp-in-software-development/)  


 