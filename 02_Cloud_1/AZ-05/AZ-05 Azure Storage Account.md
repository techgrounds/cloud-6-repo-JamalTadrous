# **AZ-05 Azure Storage Account**
Om data op te slaan in Azure heb je een Azure Storage Account nodig. In een Storage Account staan alle Azure Storage data objects als blobs, files, disks en tables.

## **Key-terms**
- Cloud Containers & Blobs:  
Het belangrijkste om te herkennen met cloudcontainers is dat ze zijn ontworpen om een ​​enkele applicatie te virtualiseren.  
Containers creëren een isolatiegrens op applicatieniveau in plaats van op serverniveau. Deze isolatie houd in dat, als er iets misgaat in die ene container - bijvoorbeeld overmatig gebruik van bronnen door een proces - dit alleen die individuele container beïnvloedt en niet de hele VM of hele server.  

Een container organiseert een set blobs, vergelijkbaar met een map in een bestandssysteem. Een Storage Account (opslagaccount) kan een onbeperkt aantal containers bevatten en een container kan een onbeperkt aantal blobs bevatten.  
  
- Blob storage:  
Azure Blob-storage is de benaming van het 'objectopslag' in de cloud containers. 

- HTTP/HTTPS:  
HTTPS is HTTP met encryptie. Het verschil tussen de twee protocollen is dat HTTPS TLS (SSL)(6e Laag OSI model) gebruikt om normale HTTP-verzoeken en antwoorden te versleutelen. Als gevolg hiervan is HTTPS veel veiliger dan HTTP. Een website die HTTP gebruikt, heeft HTTP:// in de URL, terwijl een website die HTTPS gebruikt HTTPS:// heeft.


## **Opdracht**  
-   1    Maak een Azure Storage Account. Zorg dat alleen jij toegang hebt tot de data.  
-   2   Plaats data in een storage service naar keuze via de console (bijvoorbeeld een kattenfoto in Blob storage).  
-   3   Haal de data op naar je eigen computer door middel van de Azure Storage Explorer.  
  

### **Gebruikte bronnen**  
- [Azure_Storage_accounts](https://docs.microsoft.com/en-us/azure/storage/common/storage-account-overview)  
- [random photo voor storage blob](https://www.computerhistory.org/timeline/2004/#169ebbe2ad45559efbc6eb3572006e5e)  
- [Storage_blobs](https://docs.microsoft.com/en-us/azure/storage/blobs/storage-blobs-overview)  
- [Storage_blobs_Python_interacts_in_Google_Cloud](https://googleapis.dev/python/storage/latest/blobs.html)
- [Azure_Learning_hub](https://docs.microsoft.com/en-us/learn/azure/?WT.mc_id=home_homepage-azureportal-learn)  
- [IaaS_PaaS_Saas](https://www.bmc.com/blogs/saas-vs-paas-vs-iaas-whats-the-difference-and-how-to-choose/)  
- [HTTP/HTTPS](https://www.venafi.com/blog/what-are-differences-between-http-https-0#:~:text=HTTPS%20is%20HTTP%20with%20encryption,uses%20HTTPS%20has%20HTTPS%3A%2F%2F.)  
- [A_Good_read_about_Cloud_Containers](https://searchcloudsecurity.techtarget.com/feature/Cloud-containers-what-they-are-and-how-they-work#:~:text=How%20do%20cloud%20containers%20work%3F%20Container%20technology%20has,and%20in%20system%20containerization%2C%20such%20as%20Linux%20Containers.)  



### **Ervaren problemen**
Na het aanmaken van een Storage account, lijkt het niet mogelijk om de naam ervan te veranderen. Ik ben enige tijd op zoek geweest, maar geen succes. Ik hoop daar snel genoeg achter te komen :).  

De opdracht leek klein, tot ik erachter kwam wat ik allemaal tegenkwam en ik vond het goed om hier even wat dieper op in te gaan. Ik heb veel geleerd en wat ik heb onderzocht en wat relevant leek heb ik in de bronnen te vermeld. Het was een eureka moment voor mij toen ik opnieuw ontdekte hoe de cloud werkt.  


### **Resultaat**  
        1 
![AZ-05 Azure storage account - Access Control](https://user-images.githubusercontent.com/95616021/146451108-e3dae6b2-fc33-4992-b19b-10bcf31e6acc.jpg)  
  
        2   &   3 
![AZ-05 Storage acc blob up portal - download in storage explorer](https://user-images.githubusercontent.com/95616021/146451275-e98d5ed0-7b31-407e-a0fa-8acbb1f505b0.jpg)  
  


