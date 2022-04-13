# LNX-07 Azure Disk Storage
Azure Managed Disks (beheerde schijven) zijn block-level volumes die worden beheerd  
door Azure en worden gebruikt met Azure Virtual Machines.  
Managed Disks zijn als een fysieke schijf in een on-premises server, maar dan gevirtualiseerd.  
Met beheerde schijven hoef je alleen maar de schijfgrootte en het schijftype  
op te geven en de schijf in te richten. Nadat u de schijf hebt ingericht, verwerkt Azure de rest.  

----  
----

## **Key-terms**  
       **LUN:**  
"Logical Unit Numbers" wordt gebruikt om computer opslag te identificeren.  

       **Snapshot:**  
"Snapshot" in computing is een computerterm die verwijst naar een kopie die is gemaakt van een diskdrive op een bepaald moment in de tijd. Snapshots zijn handig voor het maken van back-ups van gegevens met verschillende tussenpozen, waardoor informatie uit verschillende perioden kan worden hersteld.  

       **mount:**  
"Mounting"(monteren/koppelen) is een proces waarbij het besturingssysteem bestanden en mappen op een storage device (opslagapparaat)  
(zoals een harde schijf, cd-rom of netwerkshare) beschikbaar maakt voor gebruikers om toegang te krijgen via het bestandssysteem van de computer.  

       **/dev:**  
De /dev directory is de locatie van speciale of devices files(apparaatbestanden).

       **lsblk:**  
De lsblk command geeft informatie weer over alle beschikbare of de opgegeven block devices.  

       **fdisk:**  
staat voor Fixed Disk Editor, wat betekent dat het de Fixed Disk bewerkt (harde schijf, diskettes zijn verwijderbare  gegevens en zijn NIET vast).  
FDISK is een tool waarmee u de partitionering van uw harde schijven kunt wijzigen.  

-----
-----

## **Opdracht**  
1   - Start 2 Linux VMs. Zorgt dat je voor beide toegang hebt via SSH  
2   - Maak een Azure Managed Disk aan en koppel deze aan beide VMs tegelijk.  
3   - Creëer op je eerste machine een bestand en plaats deze op de Shared Disk.  
4   - Kijk op de tweede machine of je het bestand kan lezen.  
5   - Maak een snapshot van de schijf en probeer hier een nieuwe Disk mee te maken  
6   - Mount deze nieuwe Disk en bekijk het bestand.  

### **Gebruikte bronnen**  
- https://man7.org/linux/man-pages/man8/lsblk.8.html  
- https://opensource.com/article/19/4/create-filesystem-linux-partition  
- https://phoenixnap.com/kb/linux-format-disk  
- https://www.tecmint.com/fdisk-commands-to-manage-linux-disk-partitions/  
- https://www.webopedia.com/definitions/parent-directory/  
- https://searchcloudcomputing.techtarget.com/tip/     
- https://How-to-create-snapshots-for-Azure-VMs-and-managed-disks  
- http://facstaff.uwa.edu/bmoore/340/theBasics/Operations%20of%20FDISK%20The%20Basics%20of%20FDISK.htm  
- https://techterms.com/definition/snapshot  
- https://en.wikipedia.org/wiki/Mount_(computing)  
- https://tldp.org/LDP/sag/html/dev-fs.html  



### **Ervaren problemen**  
Het was een interessante uitdaging. Na het maken van de VMs en het aansluit van de storages aan de VMs  
leek het aan het begin of dit het enige was dat er gedaan moest worden.  
Na het bestuderen van wat er eigelijk op dat moment gebeurd, kwam ik er al vrij snel achter,  
dat de disks alleen aangesloten waren, maar niet gemonteerd(mounted) waren om te gebruiken.  
Ik moest dus onderzoeken hoe je dat doet in de Terminal en kwam na veel zoeken wel op  
wat antwoorden. Ter verduidelijking heb ik met een groepsgenoot gevraagd aan een andere  
peer hoe hij het heeft gedaan en waarom. Na de uitleg was het goed te begrijpen en uit te voeren.  

### **Resultaat**  
        1  Twee virtuele machines met ssh toegang:  
![AZ-VM1 2](https://user-images.githubusercontent.com/95616021/146822284-b3c17c9e-459c-476a-95b8-94b32fa1ec9c.jpg)  
  
        2  Azure managed disk gekoppeld aan beide VMs:  
![AZ-07 shared disk mounted vm1   vm2](https://user-images.githubusercontent.com/95616021/146822887-f0333f0e-3f7f-491e-9823-4c4324cffe0c.jpg)  
  
          3  Bestand maken op VM1 en plaatsen op Shared Disk:  
            Door middel van het maken van een partitie vd disk en mounting de disk aan de VM.  
![az-07 - maken van directory - mount van disk en directory - maken van gedeeld bestand](https://user-images.githubusercontent.com/95616021/146823539-886c644f-3019-4214-9ab4-217697bb2419.jpg)  
  
        4   Kijk op de tweede machine of je het bestand kan lezen:  
        Door middel van dezelfde handeling in VM1, maakt het mogelijk om toegang te krijgen  
        tot de shared disk, wanneer je de VM en Disk op elkaar aansluit.  
![AZ-07 VM2 mount directory to shared disk and cat shared file](https://user-images.githubusercontent.com/95616021/146823976-0e683fb1-d69d-40ae-8001-6c72cb328c5d.jpg)  
  
        5   Maak een snapshot van de schijf(Disk)  
        en probeer hier een nieuwe Disk mee te maken.  
  
-    1  
![Snapshot disk added to both VMs](https://user-images.githubusercontent.com/95616021/146825079-87425c9e-e39e-4aeb-9c89-1d13d16c0af0.jpg)  
-    2  
![Snapshot disk adding to vm](https://user-images.githubusercontent.com/95616021/146824585-6d847603-47b3-4ee6-a61d-ab5008e2c3d4.jpg)  
-    3  
    ![Snapshot disk mounted to VM1   VM2](https://user-images.githubusercontent.com/95616021/146824693-4df9e0d7-e11c-4429-809a-1b4d0dcf52bd.jpg)  
    


    6   Mount deze disk en bekijk het bestand:  
![az07 - snapshot mount - read shared file](https://user-images.githubusercontent.com/95616021/146825727-8b0855a0-31e9-4d10-bb5b-78ed2bafe655.jpg)  

-   Via VM1 heb ik opnieuw gekeken welke devices aangesloten waren, nadat ik de snapshot  
    disk had toegewezen aan de VMs in de Portal van Azure. Na de vorige opdrachten kon ik  
    de Snapshot Disk makkelijk uitlezen.














