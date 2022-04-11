# Project Scope Zentia

In this document I will clarify what is required from the customer’s demands. I made an overview which my team and I retrieved from the client through the documentation of the project and a meeting with the stakeholder.  

>In this project we had to provide a client infrastructure through code. The platform used in my case is Microsoft’s Azure, with its Domain Specific Language called Bicep. The requirements of v1.1 has some new implementations regarding v1.0. The web server has to have autoscaling capabilities. This was necessary for the expected traffic on the website/application the customer wants to be able to run without having complications and any delay in the experience of the customer.


**User Stories** 

The client also wants the following important features to be implemented in the infrastructure:

- A working application which can deploy a safe and secure Network.
- A working application which can deploy a working Web server.
- A working application which can deploy a working Management server.
- A working application which has its data encrypted.


---


**V1.0:**
v1.0’s infrastructure consists of the following requirements:

- De VM disks have to be encrypted.
- The Web server have to be backed up everyday and the backups need to be kept for 7 days.
- The Web server has to be installed in an automated manner.
- The Admin server has to be accessible with a public IP.
- The Admin server should only be accessed by trusted locations (admin’s home/the office)
- The IP ranges used in this case are: 10.10.10.0/24 & 10.20.20.0/24
- All subnets have to be protected with a firewall on subnet level.
- SSH or RDP with the Web server should only be allowed from the Admin server.

The following things would be necessary to have the client to work with the application:

- A manual for using the application and template.
- See a demonstration on how to use the MVP.


---

V.1.1:

v1.1’s infrastructure consists of the following requirements:

- The Web server needs to be able to not be ‘naked’ on the internet. This means that the server should not have a public IP. The Web server also needs have a load balancer.
- When a user makes a connection through HTTP with the load balancer ( an Application Gateway in my case) it should automatically upgrade the connection to HTTPS.
- The connection security standard has a minimum requirement of TLS 1.2 or higher.
- The Web server has to have a regulated ‘health check’.
- If the Web server would fail the health check, the server should automatically  be restored.
- When the Web server would undergo a heavy load of traffic, an extra instance of the server should be created to divide the weight of the traffic.
- The client thinks that a maximum of 3 instances would be sufficient for the amount of users that is expected.

---

Things to deliver for 1.1:

Adjusted web server containing: 
    - The Public IP removed from v1.0, so that it has no direct Public IP address. 
    - Public IP has to be assigned to the Application Gateway. 
    - Application Gateway implementation to direct its the traffic from HTTP to a secure traffic protocol HTTS.
    - Creation of the resources for secure traffic:
        - A self-signed certificate
        - Directions in the manual for the client to be able to append the certificate that is going to be used in the script.
    - Configuring the Network Security Groups to allow and deny the right traffic that is needed for the usage of the MVP.
    - Provide autoscaling capabilities to the Virtual Machine Scale Set.
    - Health probes and extensions for Virtual Machine Scale set, to monitoring the health, provide the capability to have multiple instances to run a website and being able to handle the traffics throughput.

---
---

Overall things to deliver to client:

- A working app of the MVP
- Design documentation
- Decision documentation
- Time Logs
- Demonstration/Presentation.


