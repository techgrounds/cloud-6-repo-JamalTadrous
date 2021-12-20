# File permissions
Linux-systemen bestaan uit een 'File system control' (bestands controle mechanisme) dat bepaalt wie het recht heeft op toegang tot een bestand en welke stappen of acties hij / zij erop kan uitvoeren. Het file control mechanism bestaat uit twee componenten. Classes of Ownership: Het verwijst naar degenen die toegang hebben tot het specifieke bestand.  

## Key-terms
-   File permissions = 
Bestandsmachtigingen geven aan wie en wat ze kan lezen, schrijven, wijzigen en openen.  
-   su  = switch user
-   chown   = verander eigendom (ownership) 
-   chgrp   = verander groups 
-   rwx     = read(r), write(w) en execute(x).
-   ls -alh = toont alle files in een directory, met de aangewezen permissions(bevoegdheden), per bestand.  

## Opdracht
-   Create a text file.  
-   Make a long listing to view the file’s permissions. Who is the file’s owner and group? What kind of permissions does the file have?  
-   Make the file executable by adding the execute permission (x).
-   Remove the read and write permissions (rw) from the file for the group and everyone else, but not for the owner. Can you still read it?
-   Change the owner of the file to a different user. If everything went well, you shouldn’t be able to read the file unless you assume root privileges with ‘sudo’.
-   Change the group ownership of the file to a different group.

### Gebruikte bronnen
-   https://www.educba.com/linux-file-permissions/  
-   https://www.youtube.com/watch?v=qIVR1OaIUpA  
-   https://linuxhandbook.com/create-file-linux/#:~:text=1.%20Create%20an%20empty%20file%20using%20touch%20command.,to%20create%20a%20text%20file%20in%20Linux%20terminal.
-   https://www.pluralsight.com/blog/it-ops/linux-file-permissions#:~:text=To%20change%20directory%20permissions%20in%20Linux%2C%20use%20the,permissions.%20chmod%20%2Bx%20filename%20to%20allow%20executable%20permissions.  
-   https://devconnected.com/how-to-list-users-and-groups-on-linux/#:~:text=In%20order%20to%20list%20groups%20on%20Linux%2C%20you,following%20commands%20to%20list%20groups%20on%20your%20system.


### Ervaren problemen
Het was wederom een uitdaging om de juiste syntax te vinden en rustig uit te voeren in de Terminal, zodat ik geen typfouten maakte en opnieuw kon beginnen . Na veel te lezen en wat videos te bekijken werd ik pas meer wegwijs in het dirigeren van de permissions in het bestandbeheer.

### Resultaat
In de screenshot staan stap voor stap de uitwerken van de opdracht. Als je natuurlijk weet waar je moet kijken zie je het. (Alleen een ding stond niet in de opdracht. Ik probeerde een user te verwijderen om te bevestigen voor mijzelf dat het niet kon met de permissies die al waren aangewezen.)  
  
  
![LNX-06 file permissons 1](https://user-images.githubusercontent.com/95616021/145731273-ddcc674f-e458-4bca-ae6d-4c1ff265728a.jpg)  

![LNX-06 file permissons 2](https://user-images.githubusercontent.com/95616021/145731275-3c2a44d4-563f-41c4-a9b3-f170af87a6cc.jpg)  

![LNX-06 file permissons 3](https://user-images.githubusercontent.com/95616021/145731276-2fc4067a-23ad-410b-ae1e-edb66baad294.jpg)  

