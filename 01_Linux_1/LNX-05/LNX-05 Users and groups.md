# LNX-05 Users and groups
In Linux is een 'group' een verzameling gebruikers. Het belangrijkste doel van 'groups' is het definiëren van een set bevoegdheden(privileges) zoals lees-, schrijf- of uitvoermachtigingen (execute permissions) voor een bepaalde bron die gedeeld kunnen worden met de gebruikers binnen de groep. Gebruikers(Users) kunnen worden toegevoegd aan een bestaande groep om de bevoegdheden(privileges) te gebruiken die deze verleent.

## Key-terms
-   **Root user**  
De rootgebruiker, ook bekend als de superuser of beheerder, is een speciale gebruikersaccount in Linux die wordt gebruikt voor systeembeheer. Het is de meest bevoorrechte gebruiker op het Linux-systeem en het heeft toegang tot alle opdrachten en bestanden.

-   **root permissions**  
De root permissions staan voor het hebben van volledige toestemming om elk bestand te lezen(r), te schrijven (w) en uit te voeren(x).
-   **sudo**  = "Super User DO"  
sudo commando in Linux wordt over het algemeen gebruikt als een voorvoegsel van een commando dat alleen superuser mag uitvoeren. Als u "sudo" voorvoegt met een opdracht, zal het die opdracht uitvoeren met verhoogde bevoegdheden of met andere woorden een gebruiker met de juiste machtigingen toestaan om een opdracht uit te voeren als een andere gebruiker, zoals de superuser.


## Opdracht
-   Maak een nieuwe user in uw VM.  
-   De nieuwe user moet deel uitmaken van een beheerdersgroep(admingroup) die ook de gebruiker bevat die u tijdens de installatie hebt gemaakt.  
-   De nieuwe user moet een wachtwoord hebben.  
-   De nieuwe user moet 'sudo' kunnen gebruiken.  
-   Zoek de bestanden waarin gebruikers, wachtwoorden en groepen worden opgeslagen. Kijk of u de gegevens van uw nieuw gemaakte gebruiker daar kunt vinden.  

### Gebruikte bronnen
-   https://geek-university.com/linux/root-account/  
-   https://linoxide.com/give-normal-user-root-privileges/#:~:text=According%20to%20Linux%20file%20system%20permissions%2C%20root%20or,file.%20By%20default%20root%20user%20id%20is%20%270%27. 
-   https://www.youtube.com/watch?v=XvyVjAvZ41c  
-   https://www.geeksforgeeks.org/sudo-command-in-linux-with-examples/#:~:text=sudo%20%28%20S%20uper%20U%20ser%20DO%29%20command,command%20as%20another%20user%2C%20such%20as%20the%20superuser.  
-   https://linuxize.com/post/how-to-delete-users-in-linux-using-the-userdel-command/#:~:text=To%20delete%20users%20using%20the%20userdel%20command%2C%20you,command%20reads%20the%20content%20of%20the%20%2Fetc%2Flogin.defs%20file.  
-   https://devconnected.com/how-to-list-users-and-groups-on-linux/#:~:text=In%20order%20to%20list%20groups%20on%20Linux%2C%20you,following%20commands%20to%20list%20groups%20on%20your%20system.
-   https://linoxide.com/add-user-sudoers-ubuntu/  


### Ervaren problemen
Het was een tijd geleden dat ik had geprobeerd om een fictieve user in mijn terminal aan te maken. Daarom heb ik bronnen moeten inwinnen om de handelingen opnieuw aan te leren.
### Resultaat
Door het maken van deze opdracht begrijp ik het belang van het hebben van de juiste bevoegdheden (permissions), naar de aangewezen users of groups in het LinuxOS. Ik kan nu Users toevoegen en verwijderen, bevoegdheden aanpassen en het allemaal ongedaan maken wanneer dat nodig is.

