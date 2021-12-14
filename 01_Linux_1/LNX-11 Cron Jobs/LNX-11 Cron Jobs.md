# LNX-11 **Cron Jobs**
Cron Jobs zorgen ervoor dat op ingeplande momenten, opgegeven instructies worden 
uitgevoerd. Je kunt een planning definiëren zodat uw taak meerdere keren per dag wordt uitgevoerd of op specifieke dagen en maanden wordt uitgevoerd. Een schema wordt beschreven met behulp van de unix-cron string format ( * * * * * ), wat een set van vijf waarden in een regel is, die aangeeft wanneer de taak moet worden uitgevoerd.

## **Key-terms**
-   Cron tab:  
Met Cron Tabs kan je bash scripts inplannen zodat deze op bepaalde moment of zelfs periodiek uitgevoerd kunnen worden.
-   df (syntax):  
"Disk Free"  wordt gebruikt om informatie over de totale ruimte en beschikbare ruimte weer te geven.
  
   
## **Opdracht**  
-   Maak een Bash-script dat de huidige datum en tijd naar een bestand in uw thuismap schrijft.
-   Registreer het script in uw crontab zodat het elke minuut wordt uitgevoerd.  
-   Maak een script dat beschikbare schijfruimte schrijft naar een logbestand in '/var/logs'. Gebruik een cron-taak zodat deze wekelijks wordt uitgevoerd.  

### **Gebruikte bronnen**
-   https://linuxize.com/post/scheduling-cron-jobs-with-crontab/  
Breakdown Cron Jobs
-   https://cloud.google.com/scheduler/docs/configuring/cron-job-schedules  
Breakdown Cron Jobs Schedules
-   https://www.youtube.com/watch?v=v952m13p-b4  
Cron Jobs - Linux task scheduling  
-   https://www.youtube.com/watch?v=FpGLVY2wD8o  
Cron Job - Available disc space  

### **Ervaren problemen**
Ik heb de opdracht niet in een dag gemaakt, dus moest ik even opnieuw mijn
geheugen opbrengen naar handelingen en syntax. Ik moest doornemen hoe de cronjobs de minuten, uren, dag van de maand, de maand en dag van de week. Ik heb de cronjob op een middaguur gezet aan het begin van elke week.

### Resultaat  
Na het maken van deze opdracht heb ik geleerd 

    
# opdracht 1:  
Datum en tijd Bash script naar een bestand in de Home directory.  

![LNX-11 Cron Job - Date and Time](https://user-images.githubusercontent.com/95616021/145731726-4a92345f-aaf7-436a-9a26-6e943767063a.jpg)  

  
# opdracht 2:  
Cronjob voor het uitvoeren van de datum&tijd script, elke minuut:  

![LNX-11 Cron Job - Crontab -e script run 2](https://user-images.githubusercontent.com/95616021/146079619-dfc38f6b-bb8e-4003-a062-adf654be0519.jpg)

  
# opdracht 3:  
Monitor script voor available disk space  

![LNX-11 Cron Job - Monitor script ](https://user-images.githubusercontent.com/95616021/146078468-6ab39167-7595-4321-bede-59781db392ce.jpg)  
  

Cron Job Monitor Script Weekly > /var/logs/availablediskspace
![LNX-11 Cron Job - Monitor script in cron job](https://user-images.githubusercontent.com/95616021/146078781-b550167b-4d8d-4998-8e3c-ec9fab62dc82.jpg)



