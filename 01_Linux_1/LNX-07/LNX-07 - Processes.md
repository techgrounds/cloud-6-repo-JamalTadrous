# LNX-07 - Processes
Een proces verwijst naar een programma in uitvoering(execution); het is een lopend exemplaar van een programma. Het bestaat uit de programma-instructie, gegevens die worden gelezen uit bestanden, andere programma's of invoer van een systeemgebruiker.

## Key-terms
-   Daemon  =   een daemon is een computerprogramma dat wordt uitgevoerd als een achtergrondproces, in plaats van onder de directe controle van een interactieve gebruiker.
-   ssh = Secure Shell Daemon (sshd)  
 Dit programma is biedt gecodeerde communicatie tussen twee niet-vertrouwde hosts via een onveilig netwerk.
 -  PID = Process ID  

## Opdracht  
-   Start de ssh daemon.  
-   Ontdek het PID van de ssh daemon.  
-   Ontdek hoeveel geheugen de sshd gebruikt.  
-   Stop of dood het sshd-proces.

### Gebruikte bronnen
-   https://www.tecmint.com/linux-process-management/#:~:text=It%20is%20made%20up%20of%20the%20program%20instruction%2C,are%20initialized%20and%20controlled%20through%20a%20terminal%20session.  
-   https://www.ibm.com/docs/en/z-system-automation/4.1.0?topic=automation-example-sshd  
-   https://www.youtube.com/watch?v=JZ7h5FxlTVg  
-   https://www.youtube.com/watch?v=Wlmne44M6fQ


### Ervaren problemen
Geen problemen ervaren.

### Resultaat
De opdracht heeft mij laten onderzoeken hoe ik ssh oproep, het process uitlees en het stop.  


![LNX-07 Processes ssh daemon 1](https://user-images.githubusercontent.com/95616021/145731294-e3e9b484-530e-47bd-a3ae-86b8f2753eef.jpg)  

![LNX-07 Processes ssh daemon 2 - kill ssh pid_inactive](https://user-images.githubusercontent.com/95616021/145731295-56654ab4-69a6-46c1-afa8-d24ffcf1743f.jpg)
