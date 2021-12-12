# LNX-10 Bash Scripting
Bash Shell Scripting is een commandotaaltolk. Een bash-script is een tekstbestand met instructies die van boven naar beneden moeten worden uitgevoerd. De naam is een acroniem voor de 'Bourne-Again SHell'. Shell is een macroprocessor die een interactieve of niet-interactieve opdrachtuitvoering mogelijk maakt.

## Key-terms
-   Random Generator  
Willekeurige generator
-   PATH variable  
De PATH variable map word door het OS gecontrolleerd om het programma te draaien
die is aangemaakt. Hiermee kun je jouw eigen programmas die in een map zitten
draaien zonder het pad steeds opnieuw in te voeren.
-   UWF  
Uncomplicated Firewall - Is een simpele firewall voor het linux OS om makkelijk
toegang te geven of toegang te negeren/blokkeren, op basis van regels die je kunt stellen.
## Opdracht
opdracht 1:  

-   Maak een map met de naam 'scripts'. Plaats alle scripts die u maakt in deze map.  
-   Voeg de map scripts toe aan de variabele PATH.  
-   Maak een script dat een regel tekst toevoegt aan een tekstbestand wanneer het wordt uitgevoerd.  
-   Maak een script waarmee het httpd-pakket wordt geïnstalleerd, httpd wordt geactiveerd en httpd wordt inschakelen. Ten slotte moet uw script de status van httpd in de terminal afdrukken.  
  
opdracht 2:  
-   Maak een script dat een willekeurig getal tussen 1 en 10 genereert, het opslaat in een variabele en het getal vervolgens toevoegt aan een tekstbestand.  
  
opdracht 3:  
-   Maak een script dat een willekeurig getal tussen 1 en 10 genereert, het opslaat in een variabele en het getal vervolgens alleen aan een tekstbestand toevoegt als het getal groter is dan 5. Als het getal 5 of kleiner is, moet het in plaats daarvan een regel tekst toevoegen aan datzelfde tekstbestand.  
  

### Gebruikte bronnen
-   https://linuxconfig.org/bash-scripting-tutorial-for-beginners#:~:text=In%20a%20highly%20simplistic%20view%2C%20a%20bash%20script,script%20is%20executed.%20Consider%20the%20following%20video%20example%3A  
Bash Shell Scripting Definitie informatie.  

-   https://www.youtube.com/watch?v=abN6bvyPRxQ   - PATH environment variable example.
  
  -   https://www.youtube.com/watch?v=e7BufAVwDiM&t=2718s   - Bash scripting full course.
  
  -   https://www.youtube.com/watch?v=r6euRUb18ks   - create, save and close vim.  
  - https://cloudlinuxtech.com/fix-vim-cant-open-file-for-writing-e212/   
  finding a solution for 'cant save a file or open file for wrinting in vim'.  
  (oplossing: ownership, write, read and execute permissions voor mijn persoonlijke user.)  
  - https://httpd.apache.org/  
  - https://www.cyberciti.biz/faq/bash-rename-files/   
  hernoemen van bestand jamalscripts to jamalscripts.sh
  - https://www.webservertalk.com/ubuntu-firewall-how-to-configure-ufw#:~:text=UFW%20allows%20you%20to%20access%20all%20ports%20from,port%20%288080%29%20from%20the%20specific%20IP%20address%20%28192.168.0.101%29.  
  Dit is voor het toelaten van Apache door de Ubuntu Firewall.
  - https://www.tecmint.com/install-apache-web-server-on-ubuntu-20-04/#:~:text=Installing%20Apache2%20in%20Ubuntu%2020.04.%201.%20First%2C%20log,install%20apache2.%20Install%20Apache%20on%20Ubuntu%2020.04.%203.  
  Syntax voor het installeren, updaten en automatisch opstarten van Apache2.  
  - https://www.youtube.com/watch?v=DS0VQAC-gak  
  - https://appuals.com/set-bash-variables-random-numbers/  
  Creating a random number script through variables with conditions.




### Ervaren problemen
Het was voor deze opdracht vrij moeilijk om in een keer de juiste bronnen te verkrijgen
om de opdrachten te kunnen maken. Ik moest veel lezen en veel videos kijken om echt
te begrijpen wat er gebeurd en hoe ik het implementeer.  

### Resultaat
Na letterlijk een hele dag werken, heb ik door middel van de syntax in mijn vingers te krijgen, geleerd hoe ik de juiste permissies opzoek als de script niet wil werken. Daarnaast heb ik geleerd dat je accuraat moet met het invoeren, condities te zetten met de juiste variables met if, else en then statements. De producten van de opdrachten zijn een nummergenerator, geautomatiseerde script voor apache2(httpd) 'installatie/update/aanzetten' en het activeren van de directory naar de PATH variable in Bash.
