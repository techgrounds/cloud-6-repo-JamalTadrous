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
  
  
  
# opdracht 1:
## 1.1    

![LNX-10 opdracht 1 - 1 maak een scripts directory](https://user-images.githubusercontent.com/95616021/145730890-f128ca59-c145-4189-8fcb-38c305a95d81.jpg)  

  
## 1.2    

![LNX-10 opdracht 1 - 2 PATH variable adjustment](https://user-images.githubusercontent.com/95616021/145730939-7d011bde-7c4e-4263-a8d7-6f6d75d360a7.jpg)  
  
## 1.3    

![appendline script](https://user-images.githubusercontent.com/95616021/146925342-59c475f7-4f2b-4a57-832c-0c75d763d86f.jpg)  
![1 - appendlines script ](https://user-images.githubusercontent.com/95616021/146925087-fe5e8e28-d05e-458c-84ba-4a758e37933d.jpg)  

In de derde stap van exercise 1, moest ik een text bestand aanmaken, met een script  
die een regel toevoegd, wanneer de script wordt uitgevoerd.  
In de eerste foto staat het script uitgelicht en het script werkt als volgt:  


        1      #! /bin/bash  
        2       if  [ ! -e $HOME/jamal/techgrounds/scripts/appendline2 ]; then  
        3       	  echo    $"file didn't exist, but now it does" > appendline2  
        4       else  
        5       	  echo $"file did exist, so i added this" >> appendline2  
        6       fi  

- 1:   Hashbang met directory voor het uitvoeren van bash script.  
- 2:   In stap twee van het script wordt de conditie aangegeven wat er uitgevoerd moet worden.  
Wanneer dit bestand er niet is, maak het bestand appendline aan en..  
- 3:   Plaats de tekst met: "File didn't exist, but now it does".  
- 4:   De else statement staat voor als de eerste conditie "False" is, voer dan stap 4 uit en..
- 5:   Plaats de tekst met: "File did exist, so i added this" en plaats dit in het bestand appendline2.  
Vervolgd met..  
- 6:   Afsluiten met finish script conditie.



  
## 4  
![LNX-10 opdracht 1 - 4 Apache script1](https://user-images.githubusercontent.com/95616021/145730984-098c286f-7e3d-43f3-92d7-386f3f52ddf8.jpg)  

![LNX-10 opdracht 1 - 4 Apache script2](https://user-images.githubusercontent.com/95616021/145730987-e60c3da5-03c6-4dc8-8c18-15e861ad6fae.jpg)
  
# Opdracht 2:  
![LNX-10 opdracht 2 random number generator script](https://user-images.githubusercontent.com/95616021/145731017-6d07caac-b402-4c68-b1fb-3f3b17cff609.jpg)  
  
# Opdracht 3:  
![LNX-10 opdracht 3 random number generator](https://user-images.githubusercontent.com/95616021/145731071-d1457dea-c3e3-4359-ae7b-48cd8d341a17.jpg)





