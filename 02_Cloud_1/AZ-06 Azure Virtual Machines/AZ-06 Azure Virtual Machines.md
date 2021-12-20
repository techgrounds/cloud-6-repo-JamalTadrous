# AZ-06 Azure Virtual Machines  

Een VM is een gevirtualiseerde instantie van een computer die bijna alle functies van een computer kan uitvoeren,  
inclusief het uitvoeren van toepassingen en besturingssystemen, zoals bijvoorbeeld windows/linux of andere operating systems.  
Virtuele machines draaien op een fysieke machine en hebben toegang tot computerbronnen  
van software die een hypervisor wordt genoemd.  

## Key-terms
        .pem:  
PEM ofwel "Privacy Enhanced Mail" is een Base64-gecodeerd DER-certificaat.  
PEM-certificaten worden vaak gebruikt voor webservers, omdat ze met een eenvoudige  
teksteditor makkelijk kunnen worden vertaald in leesbare gegevens.  
Deze sleutels/certificaten (keys/certificates) kun j omzetten in PuTTy tot een  
PuTTy Private Key bestand, waarmee je kan inloggen op de remote desktop/virtuele machine

        PuTTy:  
PuTTY is een open-source terminal emulator, serial console en  
applicatie voor Network File Transfer(netwerkbestandsoverdrachten).  
Het maakt via SSH (Secure shell) gemakkelijk verbinding  
met een externe server en overdraagt bestanden over het netwerk.

## Opdracht  
-   Log in bij je Azure Console.
-   Maak een VM met de volgende vereisten:
    -  Ubuntu Server 20.04 LTS - Gen1
    -   Size: Standard_B1ls
    -   Allowed inbound ports:
        -   HTTP (80)
        -   SSH (22)
    -   OS Disk type: Standard SSD
    -   Networking: defaults
    -   Boot diagnostics zijn niet nodig
    -   Custom data:  
    	    -   #!/bin/bash  
            -   sudo su  
            -   apt update  
            -   apt install apache2 -y  
            -   ufw allow 'Apache'  
            -   systemctl enable apache2  
            -   systemctl restart apache2  
-   Controleer of je server werkt.
-   Let op! Vergeet na de opdracht niet alles weer weg te gooien. Je kan elk onderdeel individueel verwijderen, of je kan in 1 keer de resource group verwijderen.  

### Gebruikte bronnen
[Virtual_Networks_Guide_Azure_Docs](https://docs.microsoft.com/en-us/azure/virtual-network/network-overview)  
[Templates_NIC](https://docs.microsoft.com/en-us/powershell/module/az.network/new-aznetworkinterface?view=azps-7.0.0)  
[.pem_files](https://knowledge.digicert.com/quovadis/ssl-certificates/ssl-general-topics/what-is-pem-format.html)  


### Ervaren problemen
Ik wist niet wat ik met die Private key moest doen en toen ik het onderzocht wat het bestand .pem  
inhield en welke software ik kon gebruiken, was het al vrij duidelijk wat ik moest doen.  
De Private key kon ik zien in VSCode en had deze apart opgeslagen per Virtual Machine. 
Dit bestand kon ik vervolgens openen in PuTTyGen en opslaan in een .ppk (putty private key bestand).  
Deze handelingen waren nodig om de terminal emulator te laten werken - via PuTTy met de username die ik  
had ingevoerd in Portal van Azure en de .ppk file met de private key van de Virtual machine.  

### Resultaat  
- Het creeren van de VM:  
![J_VMcreation](https://user-images.githubusercontent.com/95616021/146738170-19732dbe-3aea-4e69-a952-9c5881113cd2.jpg)  

- VM up and running:  
![AZ-06 Azure VM ssh](https://user-images.githubusercontent.com/95616021/146738340-e9b33b61-f23e-4b75-92da-5e173205bb45.jpg)


