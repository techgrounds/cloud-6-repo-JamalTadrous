# EXAM: Cloud Fundamentals - Azure Cloud services terms 
________________________________

# Discuss different types of cloud models  

*What are public, private, and hybrid clouds?*  

There are three deployment models for cloud computing: public cloud, private cloud, and hybrid cloud. Each deployment model has different aspects that you should consider as you migrate to the cloud.  

*Deployment model Description *

### Public cloud  

Services are offered over the public internet and available to anyone who wants to purchase them. Cloud resources, such as servers and storage, are owned and operated by a third-party cloud service provider, and delivered over the internet.  

### Private cloud  

A private cloud consists of computing resources used exclusively by users from one business or organization. A private cloud can be physically located at your organization's on-site (on-premises) datacenter, or it can be hosted by a third-party service provider.  

### Hybrid cloud  

A hybrid cloud is a computing environment that combines a public cloud and a private cloud by allowing data and applications to be shared between them.  

## Cloud model comparison  

### Public cloud  

-    No capital expenditures to scale up.  
-    Applications can be quickly provisioned and deprovisioned.  
-    Organizations pay only for what they use.  

### Private cloud  

-    Hardware must be purchased for start-up and maintenance.  
-    Organizations have complete control over resources and security.  
-    Organizations are responsible for hardware maintenance and updates.  

### Hybrid cloud  

-    Provides the most flexibility.  
-    Organizations determine where to run their applications.  
-    Organizations control security, compliance, or legal requirements.  

________________________________

# Describe cloud benefits and considerations  

What are some cloud computing advantages?  

There are several advantages that a cloud environment has over a physical environment that Tailwind Traders can use following its migration to Azure.  

-    High availability: Depending on the service-level agreement (SLA) that you choose, your cloud-based apps can provide a continuous user experience with no apparent downtime, even when things go wrong.  

-    Scalability: Apps in the cloud can scale vertically and horizontally:  
    -    Scale vertically to increase compute capacity by adding RAM or CPUs to a virtual machine.  
    -    Scaling horizontally increases compute capacity by adding instances of resources, such as adding VMs to the configuration.  

-    Elasticity: You can configure cloud-based apps to take advantage of autoscaling, so your apps always have the resources they need.  

-    Agility: Deploy and configure cloud-based resources quickly as your app requirements change.  

-    Geo-distribution: You can deploy apps and data to regional datacenters around the globe, thereby ensuring that your customers always have the best performance in their region.  

-    Disaster recovery: By taking advantage of cloud-based backup services, data replication, and geo-distribution, you can deploy your apps with the confidence that comes from knowing that your data is safe in the event of disaster.  

### Capital expenses vs. operating expenses  

There are two different types of expenses that you should consider:  

-    Capital Expenditure (CapEx) is the up-front spending of money on physical infrastructure, and then deducting that up-front expense over time. The up-front cost from CapEx has a value that reduces over time.  
-    Operational Expenditure (OpEx) is spending money on services or products now, and being billed for them now. You can deduct this expense in the same year you spend it. There is no up-front cost, as you pay for a service or product as you use it.  

In other words, when Tailwind Traders owns its infrastructure, it buys equipment that goes onto its balance sheets as assets. Because a capital investment was made, accountants categorize this transaction as a CapEx. Over time, to account for the assets' limited useful lifespan, assets are depreciated or amortized.  

Cloud services, on the other hand, are categorized as an OpEx, because of their consumption model. There's no asset for Tailwind Traders to amortize, and its cloud service provider (Azure) manages the costs that are associated with the purchase and lifespan of the physical equipment. As a result, OpEx has a direct impact on net profit, taxable income, and the associated expenses on the balance sheet.  

To summarize, CapEx requires significant up-front financial costs, as well as ongoing maintenance and support expenditures. By contrast, OpEx is a consumption-based model, so Tailwind Traders is only responsible for the cost of the computing resources that it uses.  

### Cloud computing is a consumption-based model  

Cloud service providers operate on a consumption-based model, which means that end users only pay for the resources that they use. Whatever they use is what they pay for.  

A consumption-based model has many benefits, including:  

-    No upfront costs.  
-    No need to purchase and manage costly infrastructure that users might not use to its fullest.  
-    The ability to pay for additional resources when they are needed.  
-    The ability to stop paying for resources that are no longer needed.  

________________________________

# What are cloud service models?  

If you've been around cloud computing for a while, you've probably seen the PaaS, IaaS, and SaaS acronyms for the different cloud service models. These models define the different levels of shared responsibility that a cloud provider and cloud tenant are responsible for.  

*Model Definition Description*  

## IaaS  

### Infrastructure-as-a-Service  

This cloud service model is the closest to managing physical servers; a cloud provider will keep the hardware up-to-date, but operating system maintenance and network configuration is up to you as the cloud tenant. For example, Azure virtual machines are fully operational virtual compute devices running in Microsoft datacenters. An advantage of this cloud service model is rapid deployment of new compute devices. Setting up a new virtual machine is considerably faster than procuring, installing, and configuring a physical server.  

## PaaS  

### Platform-as-a-Service  

This cloud service model is a managed hosting environment. The cloud provider manages the virtual machines and networking resources, and the cloud tenant deploys their applications into the managed hosting environment. For example, Azure App Services provides a managed hosting environment where developers can upload their web applications, without having to worry about the physical hardware and software requirements.  

## SaaS  

### Software-as-a-Service  

In this cloud service model, the cloud provider manages all aspects of the application environment, such as virtual machines, networking resources, data storage, and applications. The cloud tenant only needs to provide their data to the application managed by the cloud provider. For example, Microsoft Office 365 provides a fully working version of Microsoft Office that runs in the cloud. All you need to do is create your content, and Office 365 takes care of everything else.  

The following illustration demonstrates the services that might run in each of the cloud service models.  

![shared-responsibility-76efbc1e](https://user-images.githubusercontent.com/95616021/149776317-7e74ad06-c701-4fd9-ac22-188e5e9f794c.png)  


Let's compare the three models in more detail in the following sections.  

## IaaS  

IaaS is the most flexible category of cloud services. It aims to give you complete control over the hardware that runs your application. Instead of buying hardware, with IaaS, you rent it.  

### Advantages  

-   *No CapEx.* Users have no up-front costs.
-   *Agility.* Applications can be made accessible quickly, and deprovisioned whenever needed.  
-   *Management.* The shared responsibility model applies; the user manages and maintains the services they have provisioned, and the cloud provider manages and maintains the cloud infrastructure.  
-   *Consumption-based model.* Organizations pay only for what they use and operate under an Operational Expenditure (OpEx) model.  
-   *Skills.* No deep technical skills are required to deploy, use, and gain the benefits of a public cloud. Organizations can use the skills and expertise of the cloud provider to ensure workloads are secure, safe, and highly available.  
-   *Cloud benefits.* Organizations can use the skills and expertise of the cloud provider to ensure workloads are made secure and highly available.  
-   *Flexibility.* IaaS is the most flexible cloud service because you have control to configure and manage the hardware running your application.  

## PaaS  

PaaS provides the same benefits and considerations as IaaS, but there are some additional benefits to be aware of.  

### Advantages  

-   *No CapEx.* Users have no up-front costs.  
-   *Agility.* PaaS is more agile than IaaS, and users don't need to configure servers for running applications.  
-   *Consumption-based model.* Users pay only for what they use, and operate under an OpEx model.  
-   *Skills.* No deep technical skills are required to deploy, use, and gain the benefits of PaaS.  

### Cloud benefits.  
Users can take advantage of the skills and expertise of the cloud provider to ensure that their workloads are made secure and highly available. In addition, users can gain access to more cutting-edge development tools. They can then apply these tools across an application's lifecycle.  

### Productivity.  

Users can focus on application development only, because the cloud provider handles all platform management. Working with distributed teams as services is easier because the platform is accessed over the internet. You can make the platform available globally more easily.  

### Disadvantage  

Platform limitations. There can be some limitations to a cloud platform that might affect how an application runs. When you're evaluating which PaaS platform is best suited for a workload, be sure to consider any limitations in this area.  

### SaaS  

SaaS is software that's centrally hosted and managed for you and your users or customers. Usually one version of the application is used for all customers, and it's licensed through a monthly or annual subscription.  

SaaS provides the same benefits as IaaS, but again there are some additional benefits to be aware of too.  

### Advantages  

-   No CapEx. Users have no up-front costs.  
-   Agility. Users can provide staff with access to the latest software quickly and easily.  
-   Pay-as-you-go pricing model. Users pay for the software they use on a subscription model, typically monthly or yearly, regardless of how much they use the software.  
-   Skills. No deep technical skills are required to deploy, use, and gain the benefits of SaaS.  
-   Flexibility. Users can access the same application data from anywhere.  

### Disadvantage  

Software limitations. There can be some limitations to a software application that might affect how users work. Because you're using as-is software, you don't have direct control of features. When you're evaluating which SaaS platform is best suited for a workload, be sure to consider any business needs and software limitations.  

### Cloud service model comparison  

-   IaaS  
-   PaaS  
-   SaaS  
-   The most flexible cloud service.  
-   Focus on application development.  
-   Pay-as-you-go pricing model.  
-   You configure and manage the hardware for your application.  
-   Platform management is handled by the cloud provider.  
-   Users pay for the software they use on a subscription model.  
-   The following chart illustrates the various levels of responsibility between a cloud provider and a cloud tenant.  

![iaas-paas-saas-575a09e9](https://user-images.githubusercontent.com/95616021/149776195-a6853c83-b53b-45d7-8685-fa8ab54f8708.png)  

# What is serverless computing?  

Like PaaS, serverless computing enables developers to build applications faster by eliminating the need for them to manage infrastructure. With serverless applications, the cloud service provider automatically provisions, scales, and manages the infrastructure required to run the code. Serverless architectures are highly scalable and event-driven, only using resources when a specific function or trigger occurs.  

It's important to note that servers are still running the code. The "serverless" name comes from the fact that the tasks associated with infrastructure provisioning and management are invisible to the developer. This approach enables developers to increase their focus on the business logic, and deliver more value to the core of the business. Serverless computing helps teams increase their productivity and bring products to market faster, and it allows organizations to better optimize resources and stay focused on innovation.  

________________________________

# Overview of Azure subscriptions, management groups, and resources:  

![hierarchy levels](https://user-images.githubusercontent.com/95616021/149777154-86325cb5-52af-48bb-8408-48c4239bfae7.png)  

Having seen the top-down hierarchy of organization, let's describe each of those levels from the bottom up:  

-    Resources: Resources are instances of services that you create, like virtual machines, storage, or SQL databases.  
-    Resource groups: Resources are combined into resource groups, which act as a logical container into which Azure resources like web apps, databases, and storage accounts are deployed and managed.  
-    Subscriptions: A subscription groups together user accounts and the resources that have been created by those user accounts. For each subscription, there are limits or quotas on the amount of resources that you can create and use. Organizations can use subscriptions to manage costs and the resources that are created by users, teams, or projects.  
-    Management groups: These groups help you manage access, policy, and compliance for multiple subscriptions. All subscriptions in a management group automatically inherit the conditions applied to the management group.  

You'll examine each of these four organizational levels in the next few units.  

________________________________

# Azure regions, availability zones, and region pairs  

In the previous unit, you learned about Azure resources and resource groups. Resources are created in regions, which are different geographical locations around the globe that contain Azure datacenters.  

Azure is made up of datacenters located around the globe. When you use a service or create a resource such as a SQL database or virtual machine (VM), you're using physical equipment in one or more of these locations. These specific datacenters aren't exposed to users directly. Instead, Azure organizes them into regions. As you'll see later in this unit, some of these regions offer availability zones, which are different Azure datacenters within that region.  

### Azure regions

A region is a geographical area on the planet that contains at least one but potentially multiple datacenters that are nearby and networked together with a low-latency network. Azure intelligently assigns and controls the resources within each region to ensure workloads are appropriately balanced.  

When you deploy a resource in Azure, you'll often need to choose the region where you want your resource deployed.  

### ***Important***

Some services or VM features are only available in certain regions, such as specific VM sizes or storage types. There are also some global Azure services that don't require you to select a particular region, such as Azure Active Directory, Azure Traffic Manager, and Azure DNS.  

A few examples of regions are West US, Canada Central, West Europe, Australia East, and Japan West. Here's a view of all the available regions as of June 2020.  

![regions azure](https://user-images.githubusercontent.com/95616021/149777419-4a17cf69-6e13-4676-9371-44480d7a071c.png)  

## Why are regions important?  

Azure has more global regions than any other cloud provider. These regions give you the flexibility to bring applications closer to your users no matter where they are. Global regions provide better scalability and redundancy. They also preserve data residency for your services.  

### Special Azure regions  

Azure has specialized regions that you might want to use when you build out your applications for compliance or legal purposes. A few examples include:  

-    US DoD Central, US Gov Virginia, US Gov Iowa and more: These regions are physical and logical network-isolated instances of Azure for U.S. government agencies and partners. These datacenters are operated by screened U.S. personnel and include additional compliance certifications.  
-    China East, China North, and more: These regions are available through a unique partnership between Microsoft and 21Vianet, whereby Microsoft doesn't directly maintain the datacenters.  

Regions are what you use to identify the location for your resources. There are two other terms you should also be aware of: geographies and availability zones.  

### Azure availability zones  

You want to ensure your services and data are redundant so you can protect your information in case of failure. When you host your infrastructure, setting up your own redundancy requires that you create duplicate hardware environments. Azure can help make your app highly available through availability zones.  

### What is an availability zone?  

Availability zones are physically separate datacenters within an Azure region. Each availability zone is made up of one or more datacenters equipped with independent power, cooling, and networking. An availability zone is set up to be an isolation boundary. If one zone goes down, the other continues working. Availability zones are connected through high-speed, private fiber-optic networks.  

![availability-zones-5c3c490c](https://user-images.githubusercontent.com/95616021/149777912-68f3e288-bc1e-4081-be2b-a3d9f84cdf77.png)  

### Supported regions  

Not every region has support for availability zones. For an updated list, see Regions that support availability zones in Azure.  

### Use availability zones in your apps  

You can use availability zones to run mission-critical applications and build high-availability into your application architecture by co-locating your compute, storage, networking, and data resources within a zone and replicating in other zones. Keep in mind that there could be a cost to duplicating your services and transferring data between zones.  

Availability zones are primarily for VMs, managed disks, load balancers, and SQL databases. Azure services that support availability zones fall into three categories:  

-    Zonal services: You pin the resource to a specific zone (for example, VMs, managed disks, IP addresses).  
-    Zone-redundant services: The platform replicates automatically across zones (for example, zone-redundant storage, SQL Database).  
-    Non-regional services: Services are always available from Azure geographies and are resilient to zone-wide outages as well as region-wide outages.  

Check the documentation to determine which elements of your architecture you can associate with an availability zone.  

### Azure region pairs  


Availability zones are created by using one or more datacenters. There's a minimum of three zones within a single region. It's possible that a large disaster could cause an outage big enough to affect even two datacenters. That's why Azure also creates region pairs.  

### What is a region pair?  

Each Azure region is always paired with another region within the same geography (such as US, Europe, or Asia) at least 300 miles away. This approach allows for the replication of resources (such as VM storage) across a geography that helps reduce the likelihood of interruptions because of events such as natural disasters, civil unrest, power outages, or physical network outages that affect both regions at once. If a region in a pair was affected by a natural disaster, for instance, services would automatically failover to the other region in its region pair.  

Examples of region pairs in Azure are West US paired with East US and SouthEast Asia paired with East Asia.  

![region-pairs-d9eb9728](https://user-images.githubusercontent.com/95616021/149777994-4a191b3e-c7db-4794-b6b3-c6bf57de7a8b.png)  

Because the pair of regions is directly connected and far enough apart to be isolated from regional disasters, you can use them to provide reliable services and data redundancy. Some services offer automatic geo-redundant storage by using region pairs.  

### Additional advantages of region pairs:  

-    If an extensive Azure outage occurs, one region out of every pair is prioritized to make sure at least one is restored as quickly as possible for applications hosted in that region pair.  
-    Planned Azure updates are rolled out to paired regions one region at a time to minimize downtime and risk of application outage.  
-    Data continues to reside within the same geography as its pair (except for Brazil South) for tax- and law-enforcement jurisdiction purposes.  

Having a broadly distributed set of datacenters allows Azure to provide a high guarantee of availability.  

________________________________

# Azure resources and Azure Resource Manager  

Before you create a subscription for Tailwind Traders, you will need to be ready to start creating resources and storing them in resource groups. With that in mind, it's important to define those terms:  

-    Resource: A manageable item that's available through Azure. Virtual machines (VMs), storage accounts, web apps, databases, and virtual networks are examples of resources.  
-    Resource group: A container that holds related resources for an Azure solution. The resource group includes resources that you want to manage as a group. You decide which resources belong in a resource group based on what makes the most sense for your organization.  

### Azure resource groups  

Resource groups are a fundamental element of the Azure platform. A resource group is a logical container for resources deployed on Azure. These resources are anything you create in an Azure subscription like VMs, Azure Application Gateway instances, and Azure Cosmos DB instances. All resources must be in a resource group, and a resource can only be a member of a single resource group. Many resources can be moved between resource groups with some services having specific limitations or requirements to move. Resource groups can't be nested. Before any resource can be provisioned, you need a resource group for it to be placed in.  

### Logical grouping  

Resource groups exist to help manage and organize your Azure resources. By placing resources of similar usage, type, or location in a resource group, you can provide order and organization to resources you create in Azure. Logical grouping is the aspect that you're most interested in here, because there's a lot of disorder among our resources.  

![resource-group-461ef7f2](https://user-images.githubusercontent.com/95616021/149779013-c6350b52-aacf-4944-b331-9ff344668a74.png)  

### Life cycle  

If you delete a resource group, all resources contained within it are also deleted. Organizing resources by life cycle can be useful in nonproduction environments, where you might try an experiment and then dispose of it. Resource groups make it easy to remove a set of resources all at once.
Authorization  

Resource groups are also a scope for applying role-based access control (RBAC) permissions. By applying RBAC permissions to a resource group, you can ease administration and limit access to allow only what's needed.  

### Azure Resource Manager  

Azure Resource Manager is the deployment and management service for Azure. It provides a management layer that enables you to create, update, and delete resources in your Azure account. You use management features like access control, locks, and tags to secure and organize your resources after deployment.  

When a user sends a request from any of the Azure tools, APIs, or SDKs, Resource Manager receives the request. It authenticates and authorizes the request. Resource Manager sends the request to the Azure service, which takes the requested action. Because all requests are handled through the same API, you see consistent results and capabilities in all the different tools.  

The following image shows the role Resource Manager plays in handling Azure requests.  

![consistent-management-layer-feef9259](https://user-images.githubusercontent.com/95616021/149778829-f79438e4-244d-4982-b836-40ea8523cb8b.png)  

All capabilities that are available in the Azure portal are also available through PowerShell, the Azure CLI, REST APIs, and client SDKs. Functionality initially released through APIs will be represented in the portal within 180 days of initial release.  

### The benefits of using Resource Manager  

With Resource Manager, you can:  

-    - Manage your infrastructure through declarative templates rather than scripts. A Resource Manager template is a JSON file that defines what you want to deploy to Azure.  
-    - Deploy, manage, and monitor all the resources for your solution as a group, rather than handling these resources individually.  
-    - Redeploy your solution throughout the development life cycle and have confidence your resources are deployed in a consistent state.  
-    - Define the dependencies between resources so they're deployed in the correct order.  
-    - Apply access control to all services because RBAC is natively integrated into the management platform.  
-    - Apply tags to resources to logically organize all the resources in your subscription.  
-    - Clarify your organization's billing by viewing costs for a group of resources that share the same tag.  

______________________________________________  

# Azure subscriptions and management groups  

## Azure subscriptions  

Using Azure requires an Azure subscription. A subscription provides you with authenticated and authorized access to Azure products and services. It also allows you to provision resources. An Azure subscription is a logical unit of Azure services that links to an Azure account, which is an identity in Azure Active Directory (Azure AD) or in a directory that Azure AD trusts.  

![types of subscriptions](https://user-images.githubusercontent.com/95616021/149788527-f9efa8d9-f2d6-4654-a83c-08014d4ace9c.png)  

An account can have one subscription or multiple subscriptions that have different billing models and to which you apply different access-management policies. You can use Azure subscriptions to define boundaries around Azure products, services, and resources. There are two types of subscription boundaries that you can use:  

-    Billing boundary: This subscription type determines how an Azure account is billed for using Azure. You can create multiple subscriptions for different types of billing requirements. Azure generates separate billing reports and invoices for each subscription so that you can organize and manage costs.  
-    Access control boundary: Azure applies access-management policies at the subscription level, and you can create separate subscriptions to reflect different organizational structures. An example is that within a business, you have different departments to which you apply distinct Azure subscription policies. This billing model allows you to manage and control access to the resources that users provision with specific subscriptions.  

## Create additional Azure subscriptions  

You might want to create additional subscriptions for resource or billing management purposes. For example, you might choose to create additional subscriptions to separate:  

-    Environments: When managing your resources, you can choose to create subscriptions to set up separate environments for development and testing, security, or to isolate data for compliance reasons. This design is particularly useful because resource access control occurs at the subscription level.  
-    Organizational structures: You can create subscriptions to reflect different organizational structures. For example, you could limit a team to lower-cost resources, while allowing the IT department a full range. This design allows you to manage and control access to the resources that users provision within each subscription.  
-    Billing: You might want to also create additional subscriptions for billing purposes. Because costs are first aggregated at the subscription level, you might want to create subscriptions to manage and track costs based on your needs. For instance, you might want to create one subscription for your production workloads and another subscription for your development and testing workloads.  

You might also need additional subscriptions because of:  

-    Subscription limits: Subscriptions are bound to some hard limitations. For example, the maximum number of Azure ExpressRoute circuits per subscription is 10. Those limits should be considered as you create subscriptions on your account. If there's a need to go over those limits in particular scenarios, you might need additional subscriptions.  

### Customize billing to meet your needs  

If you have multiple subscriptions, you can organize them into invoice sections. Each invoice section is a line item on the invoice that shows the charges incurred that month. For example, you might need a single invoice for your organization but want to organize charges by department, team, or project.  

Depending on your needs, you can set up multiple invoices within the same billing account. To do this, create additional billing profiles. Each billing profile has its own monthly invoice and payment method.  

The following diagram shows an overview of how billing is structured. If you've previously signed up for Azure or if your organization has an Enterprise Agreement, your billing might be set up differently.  

![billing-structure-overview-2c81a8ad](https://user-images.githubusercontent.com/95616021/149788994-6834bf87-f00b-430c-8384-54def68dea1b.png)  

## Azure management groups  

If your organization has many subscriptions, you might need a way to efficiently manage access, policies, and compliance for those subscriptions. Azure management groups provide a level of scope above subscriptions. You organize subscriptions into containers called management groups and apply your governance conditions to the management groups. All subscriptions within a management group automatically inherit the conditions applied to the management group. Management groups give you enterprise-grade management at a large scale no matter what type of subscriptions you might have. All subscriptions within a single management group must trust the same Azure AD tenant.  

For example, you can apply policies to a management group that limits the regions available for VM creation. This policy would be applied to all management groups, subscriptions, and resources under that management group by only allowing VMs to be created in that region.  

## Hierarchy of management groups and subscriptions  

You can build a flexible structure of management groups and subscriptions to organize your resources into a hierarchy for unified policy and access management. The following diagram shows an example of creating a hierarchy for governance by using management groups.  

![management-groups-and-subscriptions-bba71896](https://user-images.githubusercontent.com/95616021/149789097-f5048e92-6652-4941-af62-f5ada21f953b.png)  

You can create a hierarchy that applies a policy. For example, you could limit VM locations to the US West Region in a group called Production. This policy will inherit onto all the Enterprise Agreement subscriptions that are descendants of that management group and will apply to all VMs under those subscriptions. This security policy can't be altered by the resource or subscription owner, which allows for improved governance.  

Another scenario where you would use management groups is to provide user access to multiple subscriptions. By moving multiple subscriptions under that management group, you can create one role-based access control (RBAC) assignment on the management group, which will inherit that access to all the subscriptions. One assignment on the management group can enable users to have access to everything they need instead of scripting RBAC over different subscriptions.  

### Important facts about management groups  

-    10,000 management groups can be supported in a single directory.  
-    A management group tree can support up to six levels of depth. This limit doesn't include the root level or the subscription level.  
-    Each management group and subscription can support only one parent.  
-    Each management group can have many children.  
-    All subscriptions and management groups are within a single hierarchy in each directory.  


_________________________________________________________________

# Overview of Azure compute services  

Azure compute is an on-demand computing service for running cloud-based applications. It provides computing resources such as disks, processors, memory, networking, and operating systems. The resources are available on-demand and can typically be made available in minutes or even seconds. You pay only for the resources you use, and only for as long as you're using them.  

Azure supports a wide range of computing solutions for development and testing, running applications, and extending your datacenter. The service supports Linux, Windows Server, SQL Server, Oracle, IBM, and SAP. Azure also has many services that can run virtual machines (VMs). Each service provides different options depending on your requirements. Some of the most prominent services are:  

-    Azure Virtual Machines  
-    Azure Container Instances  
-    Azure App Service  
-    Azure Functions (or serverless computing)  



### Virtual machines  

Virtual machines are software emulations of physical computers. They include a virtual processor, memory, storage, and networking resources. VMs host an operating system, and you can install and run software just like a physical computer. When using a remote desktop client, you can use and control the VM as if you were sitting in front of it.  

With Azure Virtual Machines, you can create and use VMs in the cloud. Virtual Machines provides infrastructure as a service (IaaS) and can be used in different ways. When you need total control over an operating system and environment, VMs are an ideal choice. Just like a physical computer, you can customize all the software running on the VM. This ability is helpful when you're running custom software or custom hosting configurations.  

### Virtual machine scale sets  

Virtual machine scale sets are an Azure compute resource that you can use to deploy and manage a set of identical VMs. With all VMs configured the same, virtual machine scale sets are designed to support true autoscale. No pre-provisioning of VMs is required. For this reason, it's easier to build large-scale services targeting big compute, big data, and containerized workloads. As demand goes up, more VM instances can be added. As demand goes down, VM instances can be removed. The process can be manual, automated, or a combination of both.  

### Containers and Kubernetes  

Container Instances and Azure Kubernetes Service are Azure compute resources that you can use to deploy and manage containers. Containers are lightweight, virtualized application environments. They're designed to be quickly created, scaled out, and stopped dynamically. You can run multiple instances of a containerized application on a single host machine.  

### App Service  

With Azure App Service, you can quickly build, deploy, and scale enterprise-grade web, mobile, and API apps running on any platform. You can meet rigorous performance, scalability, security, and compliance requirements while using a fully managed platform to perform infrastructure maintenance. App Service is a platform as a service (PaaS) offering.  

### Functions  

Functions are ideal when you're concerned only about the code running your service and not the underlying platform or infrastructure. They're commonly used when you need to perform work in response to an event (often via a REST request), timer, or message from another Azure service, and when that work can be completed quickly, within seconds or less.  

____________________________________________________________

# Decide when to use Azure Virtual Machines  

One possible solution to Tailwind Traders' lack of physical servers is through the use of virtual machines (VMs).  

With Azure Virtual Machines, you can create and use VMs in the cloud. VMs provide infrastructure as a service (IaaS) in the form of a virtualized server and can be used in many ways. Just like a physical computer, you can customize all of the software running on the VM. VMs are an ideal choice when you need:  

-    Total control over the operating system (OS).  
-    The ability to run custom software.  
-    To use custom hosting configurations.  

An Azure VM gives you the flexibility of virtualization without having to buy and maintain the physical hardware that runs the VM. You still need to configure, update, and maintain the software that runs on the VM.  

You can create and provision a VM in minutes when you select a preconfigured VM image. Selecting an image is one of the most important decisions you'll make when you create a VM. An image is a template used to create a VM. These templates already include an OS and often other software, like development tools or web hosting environments.  

### Examples of when to use VMs  

-    During testing and development. VMs provide a quick and easy way to create different OS and application configurations. Test and development personnel can then easily delete the VMs when they no longer need them.  
-    When running applications in the cloud. The ability to run certain applications in the public cloud as opposed to creating a traditional infrastructure to run them can provide substantial economic benefits. For example, an application might need to handle fluctuations in demand. Shutting down VMs when you don't need them or quickly starting them up to meet a sudden increase in demand means you pay only for the resources you use.  
-    When extending your datacenter to the cloud. An organization can extend the capabilities of its own on-premises network by creating a virtual network in Azure and adding VMs to that virtual network. Applications like SharePoint can then run on an Azure VM instead of running locally. This arrangement makes it easier or less expensive to deploy than in an on-premises environment.  
-    During disaster recovery. As with running certain types of applications in the cloud and extending an on-premises network to the cloud, you can get significant cost savings by using an IaaS-based approach to disaster recovery. If a primary datacenter fails, you can create VMs running on Azure to run your critical applications and then shut them down when the primary datacenter becomes operational again.  

### Move to the cloud with VMs  

VMs are also an excellent choice when you move from a physical server to the cloud (also known as lift and shift). You can create an image of the physical server and host it within a VM with little or no changes. Just like a physical on-premises server, you must maintain the VM. You update the installed OS and the software it runs.  

### Scale VMs in Azure  

You can run single VMs for testing, development, or minor tasks. Or you can group VMs together to provide high availability, scalability, and redundancy. No matter what your uptime requirements are, Azure has several features that can meet them. These features include:  

-    Virtual machine scale sets  
-    Azure Batch  

### What are virtual machine scale sets?  

Virtual machine scale sets let you create and manage a group of identical, load-balanced VMs. Imagine you're running a website that enables scientists to upload astronomy images that need to be processed. If you duplicated the VM, you'd normally need to configure an additional service to route requests between multiple instances of the website. Virtual machine scale sets could do that work for you.  

Scale sets allow you to centrally manage, configure, and update a large number of VMs in minutes to provide highly available applications. The number of VM instances can automatically increase or decrease in response to demand or a defined schedule. With virtual machine scale sets, you can build large-scale services for areas such as compute, big data, and container workloads.  

### What is Azure Batch?  

Azure Batch enables large-scale parallel and high-performance computing (HPC) batch jobs with the ability to scale to tens, hundreds, or thousands of VMs.  

When you're ready to run a job, Batch does the following:  

-    Starts a pool of compute VMs for you.  
-    Installs applications and staging data.  
-    Runs jobs with as many tasks as you have.  
-    Identifies failures.  
-    Requeues work.  
-    Scales down the pool as work completes.  

There might be situations in which you need raw computing power or supercomputer-level compute power. Azure provides these capabilities.  

________________________________________


## Decide when to use Azure Container Instances or Azure Kubernetes Service  

While virtual machines are an excellent way to reduce costs versus the investments that are necessary for physical hardware, they're still limited to a single operating system per virtual machine. If you want to run multiple instances of an application on a single host machine, containers are an excellent choice.  

## What are containers?  

Containers are a virtualization environment. Much like running multiple virtual machines on a single physical host, you can run multiple containers on a single physical or virtual host. Unlike virtual machines, you don't manage the operating system for a container. Virtual machines appear to be an instance of an operating system that you can connect to and manage, but containers are lightweight and designed to be created, scaled out, and stopped dynamically. While it's possible to create and deploy virtual machines as application demand increases, containers are designed to allow you to respond to changes on demand. With containers, you can quickly restart in case of a crash or hardware interruption. One of the most popular container engines is Docker, which is supported by Azure.  

### Compare virtual machines to containers  

The following video highlights several of the important differences between virtual machines and containers.  

[Compare virtual machines to containers](https://www.microsoft.com/en-us/videoplayer/embed/RE2yuaq?postJsllMsg=true)  

## Manage containers  

Containers are managed through a container orchestrator, which can start, stop, and scale out application instances as needed. There are two ways to manage both Docker and Microsoft-based containers in Azure: Azure Container Instances and Azure Kubernetes Service (AKS).  

## Azure Container Instances  

Azure Container Instances offers the fastest and simplest way to run a container in Azure without having to manage any virtual machines or adopt any additional services. It's a platform as a service (PaaS) offering that allows you to upload your containers, which it runs for you.  


## Azure Kubernetes Service  

The task of automating, managing, and interacting with a large number of containers is known as orchestration. Azure Kubernetes Service is a complete orchestration service for containers with distributed architectures and large volumes of containers.
What is Kubernetes?  

The following video discusses some important details about Kubernetes container orchestration.  

[Kubernetes](https://www.microsoft.com/en-us/videoplayer/embed/RE2yEuX?postJsllMsg=true)  

## Use containers in your solutions  

Containers are often used to create solutions by using a microservice architecture. This architecture is where you break solutions into smaller, independent pieces. For example, you might split a website into a container hosting your front end, another hosting your back end, and a third for storage. This split allows you to separate portions of your app into logical sections that can be maintained, scaled, or updated independently.  

Imagine your website back-end has reached capacity but the front end and storage aren't being stressed. You could:  

    Scale the back end separately to improve performance.  
    Decide to use a different storage service.  
    Replace the storage container without affecting the rest of the application.  

## What is a microservice?  

The following video discusses some important details about microservices.

[Microservices](https://www.microsoft.com/en-us/videoplayer/embed/RE2yEuX?postJsllMsg=true)  

___________________________________________________________________

## Decide when to use Azure Functions  


After consulting with several of your fellow developers at Tailwind Traders, you've determined that some of your application logic is event driven. In other words, for a large amount of time, your application is waiting for a particular input before it performs any processing. To reduce your costs, you want to avoid having to pay for the time that your application is waiting for input. With that in mind, you've decided to investigate Azure Functions to see if it can help.  

Serverless computing is the abstraction of servers, infrastructure, and operating systems. With serverless computing, Azure takes care of managing the server infrastructure and the allocation and deallocation of resources based on demand. Infrastructure isn't your responsibility. Scaling and performance are handled automatically. You're billed only for the exact resources you use. There's no need to even reserve capacity.  


Serverless computing includes the abstraction of servers, an event-driven scale, and micro-billing:  

-    Abstraction of servers: Serverless computing abstracts the servers you run on. You never explicitly reserve server instances. The platform manages that for you. Each function execution can run on a different compute instance. This execution context is transparent to the code. With serverless architecture, you deploy your code, which then runs with high availability.  

-    Event-driven scale: Serverless computing is an excellent fit for workloads that respond to incoming events. Events include triggers by:  
    -   Timers, for example, if a function needs to run every day at 10:00 AM UTC.  
    -    HTTP, for example, API and webhook scenarios.  
    -    Queues, for example, with order processing.  
    -    And much more.  

-    Instead of writing an entire application, the developer authors a function, which contains both code and metadata about its triggers and bindings. The platform automatically schedules the function to run and scales the number of compute instances based on the rate of incoming events. Triggers define how a function is invoked. Bindings provide a declarative way to connect to services from within the code.  

-    Micro-billing: Traditional computing bills for a block of time like paying a monthly or annual rate for website hosting. This method of billing is convenient but isn't always cost effective. Even if a customer's website gets only one hit a day, they still pay for a full day's worth of availability. With serverless computing, they pay only for the time their code runs. If no active function executions occur, they're not charged. For example, if the code runs once a day for two minutes, they're charged for one execution and two minutes of computing time.  

## Serverless computing in Azure  

Azure has two implementations of serverless compute:  

-    Azure Functions: Functions can execute code in almost any modern language.  
-    Azure Logic Apps: Logic apps are designed in a web-based designer and can execute logic triggered by Azure services without writing any code.  

## Azure Functions  

When you're concerned only about the code running your service, and not the underlying platform or infrastructure, using Azure Functions is ideal. Functions are commonly used when you need to perform work in response to an event (often via a REST request), timer, or message from another Azure service, and when that work can be completed quickly, within seconds or less.  

Functions scale automatically based on demand, so they're a solid choice when demand is variable. For example, you might receive messages from an IoT solution that's used to monitor a fleet of delivery vehicles. You'll likely have more data arriving during business hours.  

Using a virtual machine-based approach, you'd incur costs even when the virtual machine is idle. With functions, Azure runs your code when it's triggered and automatically deallocates resources when the function is finished. In this model, you're only charged for the CPU time used while your function runs.  

Functions can be either stateless or stateful. When they're stateless (the default), they behave as if they're restarted every time they respond to an event. When they're stateful (called Durable Functions), a context is passed through the function to track prior activity.  

Functions are a key component of serverless computing. They're also a general compute platform for running any type of code. If the needs of the developer's app change, you can deploy the project in an environment that isn't serverless. This flexibility allows you to manage scaling, run on virtual networks, and even completely isolate the functions.  

### Azure Logic Apps  

Logic apps are similar to functions. Both enable you to trigger logic based on an event. Where functions execute code, logic apps execute workflows that are designed to automate business scenarios and are built from predefined logic blocks.  

Every Azure logic app workflow starts with a trigger, which fires when a specific event happens or when newly available data meets specific criteria. Many triggers include basic scheduling capabilities, so developers can specify how regularly their workloads will run. Each time the trigger fires, the Logic Apps engine creates a logic app instance that runs the actions in the workflow. These actions can also include data conversions and flow controls, such as conditional statements, switch statements, loops, and branching.  

You create logic app workflows by using a visual designer on the Azure portal or in Visual Studio. The workflows are persisted as a JSON file with a known workflow schema.  

Azure provides more than 200 different connectors and processing blocks to interact with different services. These resources include the most popular enterprise apps. You can also build custom connectors and workflow steps if the service you need to interact with isn't covered. You then use the visual designer to link connectors and blocks together. You pass data through the workflow to do custom processing, often all without writing any code.  

As an example, let's say a ticket arrives in Zendesk. You could:  

-    Detect the intent of the message with cognitive services.  
-    Create an item in SharePoint to track the issue.  
-    Add the customer to your Dynamics 365 CRM system if they aren't already in your database.  
-    Send a follow-up email to acknowledge their request.  

All of those actions could be designed in a visual designer, which makes it easy to see the logic flow. For this reason, it's ideal for a business analyst role.  

### Functions vs. Logic Apps  

Functions and Logic Apps can both create complex orchestrations. An orchestration is a collection of functions or steps that are executed to accomplish a complex task.  

-    With Functions, you write code to complete each step.  
-    With Logic Apps, you use a GUI to define the actions and how they relate to one another.  

You can mix and match services when you build an orchestration, calling functions from logic apps and calling logic apps from functions. Here are some common differences between the two.  

![Functions and logic aps](https://user-images.githubusercontent.com/95616021/149944431-ad7b6a0a-2235-4f43-b7ca-19bf144a087a.jpg)  


_______________________________________________________

## Decide when to use Azure Virtual Desktop  


In addition to the challenges that Tailwind Traders has been facing with application scale, your manager has asked you to put together a new development team of remote workers.  

This task would normally require setting up several new computers with all of the requisite development tools for your new team. Then you would need to ship them to the respective developers. The time to procure, set up, and ship each of these computers would be costly. Also, all of your new developers have their own computing devices that are running a mixture of Windows, Android, and macOS operating systems.  

You want to find a way to expedite the deployment process for your remote workers. You also want to keep your management costs to a minimum. With that in mind, you want to see how Azure Virtual Desktop can help your organization.

### What is Azure Virtual Desktop?  

Azure Virtual Desktop is a desktop and application virtualization service that runs on the cloud. It enables your users to use a cloud-hosted version of Windows from any location. Azure Virtual Desktop works across devices like Windows, Mac, iOS, Android, and Linux. It works with apps that you can use to access remote desktops and apps. You can also use most modern browsers to access Azure Virtual Desktop-hosted experiences.  

The following video gives you an overview of Azure Virtual Desktop.  

[]()

## Why should you use Azure Virtual Desktop?  
Provide the best user experience  

Users have the freedom to connect to Azure Virtual Desktop with any device over the internet. They use a Azure Virtual Desktop client to connect to their published Windows desktop and applications. This client could either be a native application on the device or the Azure Virtual Desktop HTML5 web client.  

You can make sure your session host virtual machines (VMs) run near apps and services that connect to your datacenter or the cloud. This way your users stay productive and don't encounter long load times.  

User sign-in to Azure Virtual Desktop is fast because user profiles are containerized by using FSLogix. At sign-in, the user profile container is dynamically attached to the computing environment. The user profile is immediately available and appears in the system exactly like a native user profile.  

You can provide individual ownership through personal (persistent) desktops. For example, you might want to provide personal remote desktops for members of an engineering team. Then they can add or remove programs without impacting other users on that remote desktop.  

## Enhance security  

Azure Virtual Desktop provides centralized security management for users' desktops with Azure Active Directory (Azure AD). You can enable multifactor authentication to secure user sign-ins. You can also secure access to data by assigning granular role-based access controls (RBACs) to users.  

With Azure Virtual Desktop, the data and apps are separated from the local hardware. Azure Virtual Desktop runs them instead on a remote server. The risk of confidential data being left on a personal device is reduced.  

User sessions are isolated in both single and multi-session environments.  

Azure Virtual Desktop also improves security by using reverse connect technology. This connection type is more secure than the Remote Desktop Protocol. We don't open inbound ports to the session host VMs.  

## *What are some key features of Azure Virtual Desktop?*  

## Simplified management  

Azure Virtual Desktop is an Azure service, so it will be familiar to Azure administrators. You use Azure AD and RBACs to manage access to resources. With Azure, you also get tools to automate VM deployments, manage VM updates, and provide disaster recovery. As with other Azure services, Azure Virtual Desktop uses Azure Monitor for monitoring and alerts. This standardization lets admins identify issues through a single interface.  

## Performance management  

Azure Virtual Desktop gives you options to load balance users on your VM host pools. Host pools are collections of VMs with the same configuration assigned to multiple users. For the best performance, you can configure load balancing to occur as users sign in (breadth mode). With breadth mode, users are sequentially allocated across the host pool for your workload. To save costs, you can configure your VMs for depth mode load balancing where users are fully allocated on one VM before moving to the next. Azure Virtual Desktop provides tools to automatically provision additional VMs when incoming demand exceeds a specified threshold.  

### Multi-session Windows 10 deployment  

Azure Virtual Desktop lets you use Windows 10 Enterprise multi-session, the only Windows client-based operating system that enables multiple concurrent users on a single VM. Azure Virtual Desktop also provides a more consistent experience with broader application support compared to Windows Server-based operating systems.
How can you reduce costs with Azure Virtual Desktop?  

## Bring your own licenses  

Azure Virtual Desktop is available to you at no additional cost if you have an eligible Microsoft 365 license. Just pay for the Azure resources used by Azure Virtual Desktop.  

-    Bring your eligible Windows or Microsoft 365 license to get Windows 10 Enterprise and Windows 7 Enterprise desktops and apps at no additional cost.  
-    If you're an eligible Microsoft Remote Desktop Services Client Access License customer, Windows Server Remote Desktop Services desktops and apps are available at no additional cost.  

## Save on compute costs  

Buy one-year or three-year Azure Reserved Virtual Machine Instances to save you up to 72 percent versus pay-as-you-go pricing. You can pay for a reservation up front or monthly. Reservations provide a billing discount and don't affect the runtime state of your resources.  

____________________________________________


### Azure Virtual Network fundamentals  


Tailwind Traders has an on-premises datacenter that you plan to keep, but you want to use Azure to offload peak traffic by using virtual machines (VMs) hosted in Azure. You want to keep your existing IP addressing scheme and network appliances while ensuring that any data transfer is secure.  

Using Azure Virtual Network for your virtual networking can help you reach your goals.  

### What is Azure virtual networking?  

Azure virtual networks enable Azure resources, such as VMs, web apps, and databases, to communicate with each other, with users on the internet, and with your on-premises client computers. You can think of an Azure network as a set of resources that links other Azure resources.  

Azure virtual networks provide the following key networking capabilities:  

-    Isolation and segmentation  
-    Internet communications  
-    Communicate between Azure resources  
-    Communicate with on-premises resources  
-    Route network traffic  
-    Filter network traffic  
-    Connect virtual networks  

Network configurations for virtual machines  

[]()

### Isolation and segmentation  

Virtual Network allows you to create multiple isolated virtual networks. When you set up a virtual network, you define a private IP address space by using either public or private IP address ranges. You can divide that IP address space into subnets and allocate part of the defined address space to each named subnet.  

For name resolution, you can use the name resolution service that's built in to Azure. You also can configure the virtual network to use either an internal or an external DNS server.  

### Internet communications  

A VM in Azure can connect to the internet by default. You can enable incoming connections from the internet by defining a public IP address or a public load balancer. For VM management, you can connect via the Azure CLI, Remote Desktop Protocol, or Secure Shell.  

### Communicate between Azure resources  

You'll want to enable Azure resources to communicate securely with each other. You can do that in one of two ways:  

-    Virtual networks Virtual networks can connect not only VMs but other Azure resources, such as the App Service Environment for Power Apps, Azure Kubernetes Service, and Azure virtual machine scale sets.  
-    Service endpoints You can use service endpoints to connect to other Azure resource types, such as Azure SQL databases and storage accounts. This approach enables you to link multiple Azure resources to virtual networks to improve security and provide optimal routing between resources.  

### Communicate with on-premises resources  

Azure virtual networks enable you to link resources together in your on-premises environment and within your Azure subscription. In effect, you can create a network that spans both your local and cloud environments. There are three mechanisms for you to achieve this connectivity:  

-    Point-to-site virtual private networks The typical approach to a virtual private network (VPN) connection is from a computer outside your organization, back into your corporate network. In this case, the client computer initiates an encrypted VPN connection to connect that computer to the Azure virtual network.  
-    Site-to-site virtual private networks A site-to-site VPN links your on-premises VPN device or gateway to the Azure VPN gateway in a virtual network. In effect, the devices in Azure can appear as being on the local network. The connection is encrypted and works over the internet.  
-    Azure ExpressRoute For environments where you need greater bandwidth and even higher levels of security, Azure ExpressRoute is the best approach. ExpressRoute provides dedicated private connectivity to Azure that doesn't travel over the internet. (You'll learn more about ExpressRoute in a separate unit later in this module.)  

### Route network traffic  

By default, Azure routes traffic between subnets on any connected virtual networks, on-premises networks, and the internet. You also can control routing and override those settings, as follows:  

-    Route tables A route table allows you to define rules about how traffic should be directed. You can create custom route tables that control how packets are routed between subnets.  
-    Border Gateway Protocol Border Gateway Protocol (BGP) works with Azure VPN gateways or ExpressRoute to propagate on-premises BGP routes to Azure virtual networks.  

### Filter network traffic  

Azure virtual networks enable you to filter traffic between subnets by using the following approaches:  

-    Network security groups A network security group is an Azure resource that can contain multiple inbound and outbound security rules. You can define these rules to allow or block traffic, based on factors such as source and destination IP address, port, and protocol.  
-    Network virtual appliances A network virtual appliance is a specialized VM that can be compared to a hardened network appliance. A network virtual appliance carries out a particular network function, such as running a firewall or performing wide area network (WAN) optimization.  

## Connect virtual networks  

You can link virtual networks together by using virtual network peering. Peering enables resources in each virtual network to communicate with each other. These virtual networks can be in separate regions, which allows you to create a global interconnected network through Azure.  

UDR is user-defined Routing. UDR is a significant update to Azure’s Virtual Networks as this allows network admins to control the routing tables between subnets within a VNet, as well as between VNets, thereby allowing for greater control over network traffic flow.  

![local-or-remote-gateway-in-peered-virual-network-21106a38](https://user-images.githubusercontent.com/95616021/149946507-8e18b411-95de-443c-86cf-845fa2a9d36f.png)  

_____________________________________________________

# Azure Virtual Network settings  

You can create and configure Azure Virtual Network instances from the Azure portal, Azure PowerShell on your local computer, or Azure Cloud Shell.  

## Create a virtual network  

When you create an Azure virtual network, you configure a number of basic settings. You'll have the option to configure advanced settings, such as multiple subnets, distributed denial of service (DDoS) protection, and service endpoints.  

Screenshot of the Azure portal showing an example of the Create virtual network pane fields.  

You'll configure the following settings for a basic virtual network:  

-    Network name The network name must be unique in your subscription, but it doesn't need to be globally unique. Make the name a descriptive one that's easy to remember and identified from other virtual networks.

-    Address space When you set up a virtual network, you define the internal address space in Classless Interdomain Routing (CIDR) format. This address space needs to be unique within your subscription and any other networks that you connect to. Let's assume you choose an address space of 10.0.0.0/24 for your first virtual network. The addresses defined in this address space range from 10.0.0.1 to 10.0.0.254. You then create a second virtual network and choose an address space of 10.0.0.0/8. The addresses in this address space range from 10.0.0.1 to 10.255.255.254. Some of the addresses overlap and can't be used for the two virtual networks. But you can use 10.0.0.0/16, with addresses that range from 10.0.0.1 to 10.0.255.254, and 10.1.0.0/16, with addresses that range from 10.1.0.1 to 10.1.255.254. You can assign these address spaces to your virtual networks because there's no address overlap.  

-    *Note*  

-    You can add address spaces after you create the virtual network.  

-    Subscription This option only applies if you have multiple subscriptions to choose from.  

-    Resource group Like any other Azure resource, a virtual network needs to exist in a resource group. You can either select an existing resource group or create a new one.  

-    Location Select the location where you want the virtual network to exist.  

-    Subnet Within each virtual network address range, you can create one or more subnets that partition the virtual network's address space. Routing between subnets will then depend on the default traffic routes. You also can define custom routes. Alternatively, you can define one subnet that encompasses all the virtual networks' address ranges.  

-    *Note*  

-    Subnet names must begin with a letter or number and end with a letter, number, or underscore. They may contain only letters, numbers, underscores, periods, or hyphens.  

-    DDoS protection You can select either Basic or Standard DDoS protection. Standard DDoS protection is a premium service. For more information on Standard DDoS protection, see Azure DDoS protection Standard overview.  

-    Service endpoints Here, you enable service endpoints. Then you select from the list which Azure service endpoints you want to enable. Options include Azure Cosmos DB, Azure Service Bus, Azure Key Vault, and so on.  

After you've configured these settings, select Create.  

### Define additional settings  

After you create a virtual network, you can then define further settings. These include:  

-    Network security group Network security groups have security rules that enable you to filter the type of network traffic that can flow in and out of virtual network subnets and network interfaces. You create the network security group separately. Then you associate it with the virtual network.  
-    Route table Azure automatically creates a route table for each subnet within an Azure virtual network and adds system default routes to the table. You can add custom route tables to modify traffic between virtual networks.  

You can also amend the service endpoints.  

Screenshot of the Azure portal showing an example pane for editing virtual network settings.  

### Configure virtual networks  

After you've created a virtual network, you can change any further settings on the Virtual network pane in the Azure portal. Alternatively, you can use PowerShell commands or commands in Cloud Shell to make changes.  

Screenshot of the Azure portal showing an example pane for configuring a virtual network.  

You can then review and change settings in further subpanes. These settings include:  

-    Address spaces: You can add additional address spaces to the initial definition.  
-    Connected devices: Use the virtual network to connect machines.  
-    Subnets: You can add additional subnets.  
-    Peerings: Link virtual networks in peering arrangements.  

You can also monitor and troubleshoot virtual networks. Or, you can create an automation script to generate the current virtual network.  

Virtual networks are powerful and highly configurable mechanisms for connecting entities in Azure. You can connect Azure resources to one another or to resources you have on-premises. You can isolate, filter, and route your network traffic. Azure allows you to increase security where you feel you need it.  

___________________________________________________________

# Azure VPN Gateway fundamentals  


VPNs use an encrypted tunnel within another network. They're typically deployed to connect two or more trusted private networks to one another over an untrusted network (typically the public internet). Traffic is encrypted while traveling over the untrusted network to prevent eavesdropping or other attacks.  

For our Tailwind Traders scenario, VPNs can enable branch offices to share sensitive information between locations. For example, let's say that your offices on the East Coast region of North America need to access your company's private customer data, which is stored on servers that are physically located in a West Coast region. A VPN that connects your East Coast offices to your West Coast servers allows your company to securely access your private customer data.  

### VPN gateways  

A VPN gateway is a type of virtual network gateway. Azure VPN Gateway instances are deployed in Azure Virtual Network instances and enable the following connectivity:  

-    Connect on-premises datacenters to virtual networks through a site-to-site connection.  
-    Connect individual devices to virtual networks through a point-to-site connection.  
-    Connect virtual networks to other virtual networks through a network-to-network connection.  


All transferred data is encrypted in a private tunnel as it crosses the internet. You can deploy only one VPN gateway in each virtual network, but you can use one gateway to connect to multiple locations, which includes other virtual networks or on-premises datacenters.  

When you deploy a VPN gateway, you specify the VPN type: either policy-based or route-based. The main difference between these two types of VPNs is how traffic to be encrypted is specified. In Azure, both types of VPN gateways use a pre-shared key as the only method of authentication. Both types also rely on Internet Key Exchange (IKE) in either version 1 or version 2 and Internet Protocol Security (IPSec). IKE is used to set up a security association (an agreement of the encryption) between two endpoints. This association is then passed to the IPSec suite, which encrypts and decrypts data packets encapsulated in the VPN tunnel.  

### Policy-based VPNs  

Policy-based VPN gateways specify statically the IP address of packets that should be encrypted through each tunnel. This type of device evaluates every data packet against those sets of IP addresses to choose the tunnel where that packet is going to be sent through.  

### Key features of policy-based VPN gateways in Azure include:  

-    Support for IKEv1 only.  
-    Use of static routing, where combinations of address prefixes from both networks control how traffic is encrypted and decrypted through the VPN tunnel. The source and destination of the tunneled networks are declared in the policy and don't need to be declared in routing tables.  
-    Policy-based VPNs must be used in specific scenarios that require them, such as for compatibility with legacy on-premises VPN devices.  

# Route-based VPNs  

If defining which IP addresses are behind each tunnel is too cumbersome, route-based gateways can be used. With route-based gateways, IPSec tunnels are modeled as a network interface or virtual tunnel interface. IP routing (either static routes or dynamic routing protocols) decides which one of these tunnel interfaces to use when sending each packet. Route-based VPNs are the preferred connection method for on-premises devices. They're more resilient to topology changes such as the creation of new subnets.  

Use a route-based VPN gateway if you need any of the following types of connectivity:  

-    Connections between virtual networks  
-    Point-to-site connections  
-    Multisite connections  
-    Coexistence with an Azure ExpressRoute gateway  

# Key features of route-based VPN gateways in Azure include:  

-    Supports IKEv2  
-    Uses any-to-any (wildcard) traffic selectors  
-    Can use dynamic routing protocols, where routing/forwarding tables direct traffic to different IPSec tunnels In this case, the source and destination networks aren't statically defined as they are in policy-based VPNs or even in route-based VPNs with static routing. Instead, data packets are encrypted based on network routing tables that are created dynamically using routing protocols such as Border Gateway Protocol (BGP).  

# Deploy VPN gateways  

Before you can deploy a VPN gateway, you'll need some Azure and on-premises resources.  

## Required Azure resources  

You'll need these Azure resources before you can deploy an operational VPN gateway:  

###    Virtual network.  

Deploy a virtual network with enough address space for the additional subnet that you'll need for the VPN gateway. The address space for this virtual network must not overlap with the on-premises network that you'll be connecting to. You can deploy only one VPN gateway within a virtual network.  

###    GatewaySubnet.  

Deploy a subnet called GatewaySubnet for the VPN gateway. Use at least a /27 address mask to make sure you have enough IP addresses in the subnet for future growth. You can't use this subnet for any other services.  

###    Public IP address.  

Create a Basic-SKU dynamic public IP address if you're using a non-zone-aware gateway. This address provides a public-routable IP address as the target for your on-premises VPN device. This IP address is dynamic, but it won't change unless you delete and re-create the VPN gateway.  

###    Local network gateway.  

Create a local network gateway to define the on-premises network's configuration, such as where the VPN gateway will connect and what it will connect to. This configuration includes the on-premises VPN device's public IPv4 address and the on-premises routable networks. This information is used by the VPN gateway to route packets that are destined for on-premises networks through the IPSec tunnel.  

-    Virtual network gateway. Create the virtual network gateway to route traffic between the virtual network and the on-premises datacenter or other virtual networks. The virtual network gateway can be either a VPN or ExpressRoute gateway, but this unit only deals with VPN virtual network gateways. (You'll learn more about ExpressRoute in a separate unit later in this module.)  

###    Connection.  
Create a connection resource to create a logical connection between the VPN gateway and the local network gateway.  
-    The connection is made to the on-premises VPN device's IPv4 address as defined by the local network gateway.  
-    The connection is made from the virtual network gateway and its associated public IP address.  

### You can create multiple connections.  

The following diagram shows this combination of resources and their relationships to help you better understand what's required to deploy a VPN gateway.  

![resource-requirements-for-vpn-gateway-2518703e](https://user-images.githubusercontent.com/95616021/149965927-329e6dee-061f-4d43-90ca-8ff186ffdb10.png)  

### Required on-premises resources  

To connect your datacenter to a VPN gateway, you'll need these on-premises resources:  

-    A VPN device that supports policy-based or route-based VPN gateways  
-    A public-facing (internet-routable) IPv4 address  

### High-availability scenarios  

There are several ways to ensure you have a fault-tolerant configuration.  

### Active/standby  

By default, VPN gateways are deployed as two instances in an active/standby configuration, even if you only see one VPN gateway resource in Azure. When planned maintenance or unplanned disruption affects the active instance, the standby instance automatically assumes responsibility for connections without any user intervention. Connections are interrupted during this failover, but they're typically restored within a few seconds for planned maintenance and within 90 seconds for unplanned disruptions.  

![active-standby-c4a3c14d](https://user-images.githubusercontent.com/95616021/149966501-45009252-16a8-48ed-84f7-5db17e4e9830.png)  

### Active/active  

With the introduction of support for the BGP routing protocol, you can also deploy VPN gateways in an active/active configuration. In this configuration, you assign a unique public IP address to each instance. You then create separate tunnels from the on-premises device to each IP address. You can extend the high availability by deploying an additional VPN device on-premises.  

![dual-redundancy-d76100c9](https://user-images.githubusercontent.com/95616021/149966951-c43d6b71-5d57-4b00-ab52-d8fb5f15b441.png)  

### ExpressRoute failover  

Another high-availability option is to configure a VPN gateway as a secure failover path for ExpressRoute connections. ExpressRoute circuits have resiliency built in. But they aren't immune to physical problems that affect the cables delivering connectivity or outages that affect the complete ExpressRoute location. In high-availability scenarios, where there's risk associated with an outage of an ExpressRoute circuit, you can also provision a VPN gateway that uses the internet as an alternative method of connectivity. In this way, you can ensure there's always a connection to the virtual networks.  

### Zone-redundant gateways  

In regions that support availability zones, VPN gateways and ExpressRoute gateways can be deployed in a zone-redundant configuration. This configuration brings resiliency, scalability, and higher availability to virtual network gateways. Deploying gateways in Azure availability zones physically and logically separates gateways within a region while protecting your on-premises network connectivity to Azure from zone-level failures. These gateways require different gateway SKUs and use Standard public IP addresses instead of Basic public IP addresses.  

______________________________________________

## Azure ExpressRoute fundamentals  


ExpressRoute lets you extend your on-premises networks into the Microsoft cloud over a private connection with the help of a connectivity provider. With ExpressRoute, you can establish connections to Microsoft cloud services, such as Microsoft Azure and Microsoft 365.  

Connectivity can be from an any-to-any (IP VPN) network, a point-to-point Ethernet network, or a virtual cross-connection through a connectivity provider at a colocation facility. ExpressRoute connections don't go over the public Internet. This allows ExpressRoute connections to offer more reliability, faster speeds, consistent latencies, and higher security than typical connections over the Internet. For information on how to connect your network to Microsoft using ExpressRoute, see ExpressRoute connectivity models.  

Visualization that shows a high-level overview of the Azure ExpressRoute service.  

As part of your work for Tailwind Traders, you should understand what Azure ExpressRoute is and how it integrates with on-premises and Azure networks. In this unit, you'll learn about the benefits that ExpressRoute provides compared to other site-to-site connectivity options. As a result, you'll learn whether ExpressRoute can provide your company with the best possible network performance.  

Throughout this unit, we'll focus on two different layers of the Open Systems Interconnection (OSI) model:  

-    Layer 2 (L2): This layer is the Data Link Layer, which provides node-to-node communication between two nodes on the same network.  
-    Layer 3 (L3): This layer is the Network Layer, which provides addressing and routing between nodes on a multi-node network.  

## Features and benefits of ExpressRoute  

There are several benefits to using ExpressRoute as the connection service between Azure and on-premises networks.  

-    Layer 3 connectivity between your on-premises network and the Microsoft Cloud through a connectivity provider. Connectivity can be from an any-to-any (IPVPN) network, a point-to-point Ethernet connection, or through a virtual cross-connection via an Ethernet exchange.  
-    Connectivity to Microsoft cloud services across all regions in the geopolitical region.  
-    Global connectivity to Microsoft services across all regions with the ExpressRoute premium add-on.  
-    Dynamic routing between your network and Microsoft via BGP.  
-    Built-in redundancy in every peering location for higher reliability.  
-    Connection uptime SLA.  
-    QoS support for Skype for Business.  

### Layer 3 connectivity

ExpressRoute provides Layer 3 (address-level) connectivity between your on-premises network and the Microsoft cloud through connectivity partners. These connections can be from a point-to-point or any-to-any network. They can also be virtual cross-connections through an exchange.  

### Built-in redundancy

Each connectivity provider uses redundant devices to ensure that connections established with Microsoft are highly available. You can configure multiple circuits to complement this feature. All redundant connections are configured with Layer 3 connectivity to meet service-level agreements.  

### Connectivity to Microsoft cloud services  

ExpressRoute enables direct access to the following services in all regions:  

-    Microsoft Office 365  
-    Microsoft Dynamics 365  
-    Azure compute services, such as Azure Virtual Machines  
-    Azure cloud services, such as Azure Cosmos DB and Azure Storage  

Office 365 was created to be accessed securely and reliably via the internet. For this reason, we recommend the use of ExpressRoute for specific scenarios. The "Learn more" section at the end of this module includes a link about using ExpressRoute to access Office 365.  

### Across on-premises connectivity with ExpressRoute Global Reach  

You can enable ExpressRoute Global Reach to exchange data across your on-premises sites by connecting your ExpressRoute circuits. For example, assume that you have a private datacenter in California connected to ExpressRoute in Silicon Valley. You have another private datacenter in Texas connected to ExpressRoute in Dallas. With ExpressRoute Global Reach, you can connect your private datacenters through two ExpressRoute circuits. Your cross-datacenter traffic will travel through the Microsoft network.  

## Dynamic routing  

ExpressRoute uses the Border Gateway Protocol (BGP) routing protocol. BGP is used to exchange routes between on-premises networks and resources running in Azure. This protocol enables dynamic routing between your on-premises network and services running in the Microsoft cloud.

## ExpressRoute connectivity models  

ExpressRoute supports three models that you can use to connect your on-premises network to the Microsoft cloud:  

-    CloudExchange colocation  
-    Point-to-point Ethernet connection  
-    Any-to-any connection  

## Visualization of Azure connectivity models.  

### Colocation at a cloud exchange  

Colocated providers can normally offer both Layer 2 and Layer 3 connections between your infrastructure, which might be located in the colocation facility, and the Microsoft cloud. For example, if your datacenter is colocated at a cloud exchange such as an ISP, you can request a virtual cross-connection to the Microsoft cloud.  

### Point-to-point Ethernet connection  

Point-to-point connections provide Layer 2 and Layer 3 connectivity between your on-premises site and Azure. You can connect your offices or datacenters to Azure by using the point-to-point links. For example, if you have an on-premises datacenter, you can use a point-to-point Ethernet link to connect to Microsoft.  

### Any-to-any networks  

With any-to-any connectivity, you can integrate your wide area network (WAN) with Azure by providing connections to your offices and datacenters. Azure integrates with your WAN connection to provide a connection like you would have between your datacenter and any branch offices.  

With any-to-any connections, all WAN providers offer Layer 3 connectivity. For example, if you already use Multiprotocol Label Switching to connect to your branch offices or other sites in your organization, an ExpressRoute connection to Microsoft behaves like any other location on your private WAN.  

### Security considerations  

With ExpressRoute, your data doesn't travel over the public internet, so it's not exposed to the potential risks associated with internet communications. ExpressRoute is a private connection from your on-premises infrastructure to your Azure infrastructure. Even if you have an ExpressRoute connection, DNS queries, certificate revocation list checking, and Azure Content Delivery Network requests are still sent over the public internet.  

______________________________________________________________


## Azure Blob storage fundamentals  

Azure Blob Storage is an object storage solution for the cloud. It can store massive amounts of data, such as text or binary data. Azure Blob Storage is unstructured, meaning that there are no restrictions on the kinds of data it can hold. Blob Storage can manage thousands of simultaneous uploads, massive amounts of video data, constantly growing log files, and can be reached from anywhere with an internet connection.  

Blobs aren't limited to common file formats. A blob could contain gigabytes of binary data streamed from a scientific instrument, an encrypted message for another application, or data in a custom format for an app you're developing. One advantage of blob storage over disk storage is that it does not require developers to think about or manage disks; data is uploaded as blobs, and Azure takes care of the physical storage needs.  

### Blob Storage is ideal for:  

-    Serving images or documents directly to a browser.  
-    Storing files for distributed access.  
-    Streaming video and audio.  
-    Storing data for backup and restore, disaster recovery, and archiving.  
-    Storing data for analysis by an on-premises or Azure-hosted service.  
-    Storing up to 8 TB of data for virtual machines.  

You store blobs in containers, which helps you organize your blobs depending on your business needs.  

The following diagram illustrates how you might use Azure accounts, containers, and blobs.  


![account-container-blob-4da0ac47](https://user-images.githubusercontent.com/95616021/150036673-278f1dc9-4142-4736-ad5b-75f80bb5e6d7.png)  


# Azure Files fundamentals  


Azure Files offers fully managed file shares in the cloud that are accessible via the industry standard Server Message Block and Network File System (preview) protocols. Azure file shares can be mounted concurrently by cloud or on-premises deployments of Windows, Linux, and macOS. Applications running in Azure virtual machines or cloud services can mount a file storage share to access file data, just as a desktop application would mount a typical SMB share. Any number of Azure virtual machines or roles can mount and access the file storage share simultaneously. Typical usage scenarios would be to share files anywhere in the world, diagnostic data, or application data sharing.  

![azure-files-5f942c3e](https://user-images.githubusercontent.com/95616021/150036822-b22102a2-035c-436c-b8d5-75d59ce90c57.png)  

Use Azure Files for the following situations:  

-    Many on-premises applications use file shares. Azure Files makes it easier to migrate those applications that share data to Azure. If you mount the Azure file share to the same drive letter that the on-premises application uses, the part of your application that accesses the file share should work with minimal changes, if any.  
-    Store configuration files on a file share and access them from multiple VMs. Tools and utilities used by multiple developers in a group can be stored on a file share, ensuring that everybody can find them, and that they use the same version.  
-    Write data to a file share, and process or analyze the data later. For example, you might want to do this with diagnostic logs, metrics, and crash dumps.  

The following illustration shows Azure Files being used to share data between two geographical locations. Azure Files ensures the data is encrypted at rest, and the SMB protocol ensures the data is encrypted in transit.  

Diagram that shows the file sharing capabilities of Azure Files between a Western US Azure file share and a European Azure file share, each with their own SMB users.  

One thing that distinguishes Azure Files from files on a corporate file share is that you can access the files from anywhere in the world, by using a URL that points to the file. You can also use Shared Access Signature (SAS) tokens to allow access to a private asset for a specific amount of time.  

Here's an example of a service SAS URI, showing the resource URI and the SAS token:  

![sas-storage-uri-037308fa](https://user-images.githubusercontent.com/95616021/150036776-b2653435-d964-4f3b-9951-0063323e166b.png)  

____________________________________________

### Explore Azure database for MySQL  


Tailwind Traders currently manages several websites on-premises that use the LAMP stack (Linux, Apache, MySQL, PHP). As part of your planning for your migration strategy, the different teams at Tailwind Traders have been researching the available service offerings that Azure provides. You've already discovered that the Web Apps feature of Azure App Service provides built-in functionality to create web applications that use PHP on a Linux server running Apache. You've been tasked with investigating whether the database requirements for the web development team will continue to be met after the migration to Azure.  


Azure Database for MySQL is a relational database service in the cloud, and it's based on the MySQL Community Edition database engine, versions 5.6, 5.7, and 8.0. With it, you have a 99.99 percent availability service level agreement from Azure, powered by a global network of Microsoft-managed datacenters. This helps keep your app running 24/7. With every Azure Database for MySQL server, you take advantage of built-in security, fault tolerance, and data protection that you would otherwise have to buy or design, build, and manage. With Azure Database for MySQL, you can use point-in-time restore to recover a server to an earlier state, as far back as 35 days.  

### Azure Database for MySQL delivers:    

-    Built-in high availability with no additional cost.  
-    Predictable performance and inclusive, pay-as-you-go pricing.  
-    Scale as needed, within seconds.  
-    Ability to protect sensitive data at-rest and in-motion.  
-    Automatic backups.  
-    Enterprise-grade security and compliance.  

These capabilities require almost no administration, and all are provided at no additional cost. They allow you to focus on rapid app development and accelerating your time-to-market, rather than having to manage virtual machines and infrastructure. In addition, you can migrate your existing MySQL databases with minimal downtime by using the Azure Database Migration Service. After you have completed your migration, you can continue to develop your application with the open-source tools and platform of your choice. You don't have to learn new skills.  


Azure Database for MySQL offers several service tiers, and each tier provides different performance and capabilities to support lightweight to heavyweight database workloads. You can build your first app on a small database for a few dollars a month, and then adjust the scale to meet the needs of your solution. Dynamic scalability enables your database to transparently respond to rapidly changing resource requirements. You only pay for the resources you need, and only when you need them.  

## Explore Azure Database for PostgreSQL  


As part of its overall data strategy, Tailwind Traders have been using PostgreSQL for several years. You and your team probably already know the benefits of PostgreSQL. Part of your migration is to use Azure Database for PostgreSQL, and you want to make sure that you'll have access to the same benefits as your on-premises server before moving to the cloud.  

icon

Azure Database for PostgreSQL is a relational database service in the cloud. The server software is based on the community version of the open-source PostgreSQL database engine. Your familiarity with tools and expertise with PostgreSQL is applicable when you're using Azure Database for PostgreSQL.  

Moreover, Azure Database for PostgreSQL delivers the following benefits:  

-    Built-in high availability compared to on-premises resources. There's no additional configuration, replication, or cost required to make sure your applications are always available.  
-    Simple and flexible pricing. You have predictable performance based on a selected pricing tier choice that includes software patching, automatic backups, monitoring, and security.  
-    Scale up or down as needed, within seconds. You can scale compute or storage independently as needed, to make sure you adapt your service to match usage.  
-    Adjustable automatic backups and point-in-time-restore for up to 35 days.  
-    Enterprise-grade security and compliance to protect sensitive data at-rest and in-motion. This security covers data encryption on disk and SSL encryption between client and server communication.    

Azure Database for PostgreSQL is available in two deployment options: Single Server and Hyperscale (Citus).  

### **Single Server**  

The Single Server deployment option delivers:  

-    Built-in high availability with no additional cost (99.99 percent SLA).  
-    Predictable performance and inclusive, pay-as-you-go pricing.  
-    **VERTICAL** scale as needed, within seconds.  
-    Monitoring and alerting to assess your server.  
-    Enterprise-grade security and compliance.  
-    Ability to protect sensitive data at-rest and in-motion.  
-    Automatic backups and point-in-time-restore for up to 35 days.  

All those capabilities require almost no administration, and all are provided at no additional cost. You can focus on rapid application development and accelerating your time to market, rather than having to manage virtual machines and infrastructure. You can continue to develop your application with the open-source tools and platform of your choice, without having to learn new skills.  

The Single Server deployment option offers three pricing tiers: Basic, General Purpose, and Memory Optimized. Each tier offers different resource capabilities to support your database workloads. You can build your first app on a small database for a few dollars a month, and then adjust the scale to meet the needs of your solution. Dynamic scalability enables your database to transparently respond to rapidly changing resource requirements. You only pay for the resources you need, and only when you need them.  

### **Hyperscale (Citus)**  

The Hyperscale (Citus) option **HORIZONTALLY** scales queries across multiple machines by using sharding. Its query engine parallelizes incoming SQL queries across these servers for faster responses on large datasets. It serves applications that require greater scale and performance, generally workloads that are approaching, or already exceed, 100 GB of data.  

The Hyperscale (Citus) deployment option supports multi-tenant applications, real-time operational analytics, and high throughput transactional workloads. Applications built for PostgreSQL can run distributed queries on Hyperscale (Citus) with standard connection libraries and minimal changes.  


## Explore Azure SQL Managed Instance  


Azure SQL Managed Instance is a scalable cloud data service that provides the broadest SQL Server database engine compatibility with all the benefits of a fully managed platform as a service. Depending on your scenario, Azure SQL Managed Instance might offer more options for your database needs.  


### Features  

Like Azure SQL Database, Azure SQL Managed Instance is a platform as a service (PaaS) database engine, which means that your company will be able to take advantage of the best features of moving your data to the cloud in a fully-managed environment. For example, your company will no longer need to purchase and manage expensive hardware, and you won't have to maintain the additional overhead of managing your on-premises infrastructure. On the other hand, your company will benefit from the quick provisioning and service scaling features of Azure, together with automated patching and version upgrades. In addition, you'll be able to rest assured that your data will always be there when you need it through built-in high availability features and a 99.99% uptime service level agreement (SLA). You'll also be able to protect your data with automated backups and a configurable backup retention period.  

Azure SQL Database and Azure SQL Managed Instance offer many of the same features; however, Azure SQL Managed Instance provides several options that might not be available to Azure SQL Database. For example, Tailwind Traders currently uses several on-premises servers running SQL Server, and they would like to migrate their existing databases to a SQL database running in the cloud. However, several of their databases use Cyrillic characters for collation. In this scenario, Tailwind Traders should migrate their databases to an Azure SQL Managed Instance, since Azure SQL Database only uses the default SQL_Latin1_General_CP1_CI_AS server collation.  

*Note*  

For a detailed list of the differences between Azure SQL Database and Azure SQL Managed Instance, see Features comparison: Azure SQL Database and Azure SQL Managed Instance.  

### Migration  

Azure SQL Managed Instance makes it easy to migrate your on-premises data on SQL Server to the cloud using the Azure Database Migration Service (DMS) or native backup and restore. After you have discovered all of the features that your company uses, you need to assess which on-premises SQL Server instances you can migrate to Azure SQL Managed Instance to see if you have any blocking issues. Once you have resolved any issues, you can migrate your data, then cutover from your on-premises SQL Server to your Azure SQL Managed Instance by changing the connection string in your applications.  

![azure-files-5f942c3e](https://user-images.githubusercontent.com/95616021/150036822-b22102a2-035c-436c-b8d5-75d59ce90c57.png)  

__________________________________________

## Explore big data and analytics  


Several years ago, Tailwind Traders rolled out a new GPS tracking system for all of its delivery vehicles. The new system provides real-time tracking data to your primary datacenter. Your CTO wants your team to look at several years of tracking data in order to determine trends. For example, an important trend might be a spike in deliveries around the holidays that would require hiring additional staff. Through an in-depth analysis of the tracking data that you've recorded, your CTO seeks to predict when changes are necessary, and then proactively take the necessary steps to appropriately manage spikes.  

Data comes in all types of forms and formats. When we talk about big data, we're referring to large volumes of data. In this Tailwind Traders scenario, data is collected from the GPS sensors, which includes location information, data from weather systems, and many other sources that generate large amounts of data. This amount of data becomes increasingly hard to make sense of and to base decisions on. The volumes are so large that traditional forms of processing and analysis are no longer appropriate.  

Open-source cluster technologies have been developed, over time, to try to deal with these large datasets. Microsoft Azure supports a broad range of technologies and services to provide big data and analytic solutions, including Azure Synapse Analytics, Azure HDInsight, Azure Databricks, and Azure Data Lake Analytics.  

## Azure Synapse Analytics  

Azure Synapse Analytics (formerly Azure SQL Data Warehouse) is a limitless analytics service that brings together enterprise data warehousing and big data analytics. You can query data on your terms by using either serverless or provisioned resources at scale. You have a unified experience to ingest, prepare, manage, and serve data for immediate business intelligence and machine learning needs.  

## Azure HDInsight  

Azure HDInsight is a fully managed, open-source analytics service for enterprises. It's a cloud service that makes it easier, faster, and more cost-effective to process massive amounts of data. You can run popular open-source frameworks and create cluster types such as Apache Spark, Apache Hadoop, Apache Kafka, Apache HBase, Apache Storm, and Machine Learning Services. HDInsight also supports a broad range of scenarios such as extraction, transformation, and loading (ETL), data warehousing, machine learning, and IoT.  

## Azure Databricks  

Azure Databricks helps you unlock insights from all your data and build artificial intelligence solutions. You can set up your Apache Spark environment in minutes, and then autoscale and collaborate on shared projects in an interactive workspace. Azure Databricks supports Python, Scala, R, Java, and SQL, as well as data science frameworks and libraries including TensorFlow, PyTorch, and scikit-learn.  


## Azure Data Lake Analytics  

Azure Data Lake Analytics is an on-demand analytics job service that simplifies big data. Instead of deploying, configuring, and tuning hardware, you write queries to transform your data and extract valuable insights. The analytics service can handle jobs of any scale instantly by setting the dial for how much power you need. You only pay for your job when it's running, making it more cost-effective.  
 
![Knowledge check database fundamentals](https://user-images.githubusercontent.com/95616021/150042073-5eeaa2c5-5a2a-404f-8ba9-2c6f5e3678fe.jpg)  


______________________________________________________


## Identify the product options  

IoT enables devices to gather and then relay information for data analysis. Smart devices are equipped with sensors that collect data. A few common sensors that measure attributes of the physical world include:  

-    Environmental sensors that capture temperature and humidity levels.  
-    Barcode, QR code, or optical character recognition (OCR) scanners.  
-    Geo-location and proximity sensors.  
-    Light, color, and infrared sensors.  
-    Sound and ultrasonic sensors.  
-    Motion and touch sensors.  
-    Accelerometer and tilt sensors.  
-    Smoke, gas, and alcohol sensors.  
-    Error sensors to detect when there's a problem with the device.  
-    Mechanical sensors that detect anomalies or deformations.  
-    Flow, level, and pressure sensors for measuring gasses and liquids.  

By using Azure IoT services, devices that are equipped with these kinds of sensors and that can connect to the internet could send their sensor readings to a specific endpoint in Azure via a message. The message's data is then collected and aggregated, and it can be converted into reports and alerts. Alternately, all devices could be updated with new firmware to fix issues or add new functionality by sending software updates from Azure IoT services to each device.  

Let's suppose your company manufactures and operates smart refrigerated vending machines. What kinds of information would you want to monitor? You might want to ensure that:  

-    Each machine is operating without any errors.  
-    The machines haven't been compromised.  
-    The machines' refrigeration systems are keeping their contents within a certain temperature range.  
-    You're notified when products reach a certain inventory level so you can restock the machines.  

If the hardware of your vending machines can collect and send this information in a standard message, the messages each machine sends can be received, stored, organized, and displayed by using Azure IoT services.  

The data that's collected from these devices could be combined with Azure AI services to help you predict:  

-    When machines need proactive maintenance.  
-   When inventories will need to be replenished and new product ordered from vendors.  

Many services can assist and drive end-to-end solutions for IoT on Azure.  

## Azure IoT Hub  

> Azure IoT Hub is a managed service that's hosted in the cloud and that acts as a central message hub for bi-directional communication between your IoT application and the devices it manages. You can use Azure IoT Hub to build IoT solutions with reliable and secure communications between millions of IoT devices and a cloud-hosted solution back end. You can connect virtually any device to your IoT hub.  

> The IoT Hub service supports communications both from the device to the cloud and from the cloud to the device. It also supports multiple messaging patterns, such as device-to-cloud telemetry, file upload from devices, and request-reply methods to control your devices from the cloud. After an IoT hub receives messages from a device, it can route that message to other Azure services.  

> From a cloud-to-device perspective, IoT Hub allows for command and control. That is, you can have either manual or automated remote control of connected devices, so you can instruct the device to open valves, set target temperatures, restart stuck devices, and so on.  

> IoT Hub monitoring helps you maintain the health of your solution by tracking events such as device creation, device failures, and device connections.  

## Azure IoT Central  

> Azure IoT Central builds on top of IoT Hub by adding a dashboard that allows you to connect, monitor, and manage your IoT devices. The visual user interface (UI) makes it easy to quickly connect new devices and watch as they begin sending telemetry or error messages. You can watch the overall performance across all devices in aggregate, and you can set up alerts that send notifications when a specific device needs maintenance. Finally, you can push firmware updates to the device.  

> To help you get up and running quickly, IoT Central provides starter templates for common scenarios across various industries, such as retail, energy, healthcare, and government. You then customize the design starter templates directly in the UI by choosing from existing themes or creating your own custom theme, setting the logo, and so on. With IoT Central, you can tailor the starter templates for the specific data that's sent from your devices, the reports you want to see, and the alerts you want to send.  

## Azure IoT Hub  

> Azure IoT Hub is a managed service that's hosted in the cloud and that acts as a central message hub for bi-directional communication between your IoT application and the devices it manages. You can use Azure IoT Hub to build IoT solutions with reliable and secure communications between millions of IoT devices and a cloud-hosted solution back end. You can connect virtually any device to your IoT hub.  

> The IoT Hub service supports communications both from the device to the cloud and from the cloud to the device. It also supports multiple messaging patterns, such as device-to-cloud telemetry, file upload from devices, and request-reply methods to control your devices from the cloud. After an IoT hub receives messages from a device, it can route that message to other Azure services.  

> From a cloud-to-device perspective, IoT Hub allows for command and control. That is, you can have either manual or automated remote control of connected devices, so you can instruct the device to open valves, set target temperatures, restart stuck devices, and so on.  

> IoT Hub monitoring helps you maintain the health of your solution by tracking events such as device creation, device failures, and device connections.  

## Azure IoT Central  

> Azure IoT Central builds on top of IoT Hub by adding a dashboard that allows you to connect, monitor, and manage your IoT devices. The visual user interface (UI) makes it easy to quickly connect new devices and watch as they begin sending telemetry or error messages. You can watch the overall performance across all devices in aggregate, and you can set up alerts that send notifications when a specific device needs maintenance. Finally, you can push firmware updates to the device.  

> To help you get up and running quickly, IoT Central provides starter templates for common scenarios across various industries, such as retail, energy, healthcare, and government. You then customize the design starter templates directly in the UI by choosing from existing themes or creating your own custom theme, setting the logo, and so on. With IoT Central, you can tailor the starter templates for the specific data that's sent from your devices, the reports you want to see, and the alerts you want to send.  

> You can use the UI to control your devices remotely. This feature allows you to push a software update or modify a property of the device. You can adjust the desired temperature for one or all of your refrigerated vending machines from directly inside of IoT Central.  

> A key part of IoT Central is the use of device templates. By using a device template, you can connect a device without any service-side coding. IoT Central uses the templates to construct the dashboards, alerts, and so on. Device developers still need to create code to run on the devices, and that code must match the device template specification.  

## Azure Sphere  

> Azure Sphere creates an end-to-end, highly secure IoT solution for customers that encompasses everything from the hardware and operating system on the device to the secure method of sending messages from the device to the message hub. Azure Sphere has built-in communication and security features for internet-connected devices.  

### Azure Sphere comes in three parts:  

> The first part is the Azure Sphere micro-controller unit (MCU), which is responsible for processing the operating system and signals from attached sensors. The following image displays the Seeed Azure Sphere MT3620 Development Kit MCU, one of several different starter kits that are available for prototyping and developing Azure Sphere applications.  

![Micro controller unit MCU](https://user-images.githubusercontent.com/95616021/150143383-629fc696-5b84-43f4-8e0f-3894e0a31dea.png)  

>The second part is a customized Linux operating system (OS) that handles communication with the security service and can run the vendor's software.  

> The third part is Azure Sphere Security Service, also known as AS3. Its job is to make sure that the device has not been maliciously compromised. When the device attempts to connect to Azure, it first must authenticate itself, per device, which it does by using certificate-based authentication. If it authenticates successfully, AS3 checks to ensure that the device hasn't been tampered with. After it has established a secure channel of communication, AS3 pushes any OS or approved customer-developed software updates to the device.  

> After the Azure Sphere system has validated the authenticity of the device and authenticated it, the device can interact with other Azure IoT services by sending telemetry and error information.  


## Analyze the decision criteria

>In this unit, we'll analyze the criteria that experts employ when they decide which IoT service to use for a given business need. Understanding the criteria can also help you better understand the nuanced differences between each product.  

### Is it critical to ensure that the device is not compromised?  

> Not in every case. Manufacturers and customers would rather not have their devices to be maliciously compromised and used for nefarious purposes, however in some cases it's more critical to ensure the integrity than others. An example would be that of an ATM in comparison to a washing machine. When security is a critical consideration in your product's design, the best product option is Azure Sphere, which provides a comprehensive end-to-end solution for IoT devices.  

> As we mentioned in the previous unit, Azure Sphere ensures a secure channel of communication between the device and Azure by controlling everything from the hardware to the operating system and the authentication process. This ensures that the integrity of the device is uncompromised. After a secure channel is established, messages can be received from the device securely, and messages or software updates can be sent to the device remotely.  

### Do I need a dashboard for reporting and management?  
> Your next decision will be the level of services you require from your IoT solution. If you merely want to connect to your remote devices to receive telemetry and occasionally push updates, and you don't need any reporting capabilities, you might prefer to implement Azure IoT Hub by itself. Your programmers can still create a customized set of management tools and reports by using the IoT Hub RESTful API.

> However, if you want a pre-built customizable user interface with which you can view and control your devices remotely, you might prefer to start with IoT Central. With this solution, you can control a single device or all devices at once, and you can set up alerts for certain conditions, such as a device failure.

> IoT Central integrates with many different Azure products, including IoT Hub, to create a dashboard with reports and management features. The dashboard is based on starter templates for common industry and usage scenarios. You can use the dashboard that's generated by the starter template as is or customize it to suit your needs. You can have multiple dashboards and target them at a variety of users.

## Use IoT Hub

> The Tailwind Traders senior leadership team has decided to partner with a leading appliance manufacturer to create an exclusive, high-end brand that promises a preemptive maintenance service agreement. This unique feature would differentiate Tailwind Traders appliances in a crowded, competitive market. The feature also makes the brand lucrative, because a yearly subscription would be required. To build a strong brand reputation, the appliances will send telemetry information to a centralized location, where the data can be analyzed and maintenance can be scheduled.  

> The devices will not require remote control. They will merely be sending their telemetry data for analysis and pro-active maintenance.  

>Because Tailwind Traders already has software in place for managing appliance maintenance requests, the company wants to integrate all functionality into this existing system.  

### Which service should you choose?  
Let's apply the decision criteria from the previous unit.  

> First, is it critical to ensure that the device or, in this case, each appliance, isn't compromised? It's preferable, but not critical, that the devices aren't compromised. The worst that could happen is that a hacker reads the current temperature of the customer's refrigerator or the number of loads of laundry the washing machine has completed.  

> Even if the customer calls and reports strange behavior with their appliance, a technician could reset or replace the microcontroller. It might not warrant the extra expense or engineering resources that would be required to employ Azure Sphere.  

> Second decision criterion: do I need a dashboard for reporting and management? In this case, no. Tailwind Traders wants to integrate the telemetry data and all other functionality into an existing maintenance request system. In this case, Azure IoT Central is not required.  

>So, given the responses to the decision criteria, Azure IoT Hub is the best choice in this scenario.  

### Why not use Azure IoT Central?  
> Azure IoT Central provides a dashboard that allows companies to manage IoT devices individually and an aggregate, view reports, and set up error notifications via a GUI. But, in this scenario, Tailwind Traders wants to integrate the telemetry it collects and other analysis functionality into an existing software application. Furthermore, the company's appliances will be collecting data via sensors only and don't need the ability to update settings or software remotely. Therefore, the company doesn't need Azure IoT Central.  

### Why not use Azure Sphere?  
> Azure Sphere provides a complete solution for scenarios where security is critical. In this scenario, security is preferred but not critical. The appliances can't be updated with new software remotely. The sensors merely report usage data. As a result, Azure Sphere isn't necessary.  

## Use IoT Central  

Tailwind Traders owns a fleet of delivery vehicles that transport products from warehouses to distribution centers, and from distribution centers to stores and homes. The company is looking for a complete logistics solution that takes data sent from an onboard vehicle computer and turns it into actionable information.  

Furthermore, shipments can be outfitted with sensors from a third-party vendor to collect and monitor ambient conditions. These sensors can collect information such as the temperature, humidity, tilt, shock, light, and the location of a shipment.  

A few goals of this logistics system include:  

- Shipment monitoring with real-time tracing and tracking.  
- Shipment integrity with real-time ambient condition monitoring.  
- Security from theft, loss, or damage of shipments.  
- Geo-fencing, route optimization, fleet management, and vehicle analytics.  
- Forecasting for predictable departure and arrival of shipments.  
- The company would prefer a pre-built solution to collect the sensor and vehicle computer data, and provide a graphical user interface that displays reports about shipments and vehicles.  

### Which service should you choose?  
Here again, apply the decision criteria that you learned about earlier.  

*First,* is it critical to ensure that the device or, in this case, each appliance, isn't compromised? Ideally, each sensor and vehicle computer would be impervious to interference. However, security was not mentioned as a critical concern at this point. The vehicle computers and sensors are built by a third-party vendor and, unless Tailwind Traders wants to manufacture its own devices (which they don't), the company will be forced to use hardware that's already available.  

*Second,* does Tailwind Traders need a dashboard for reporting and management? Yes, a reporting and management dashboard is a requirement.  

Based on these responses to the decision criteria, Azure IoT Central is the best choice in this scenario. The Connected Logistics starter template provides an out-of-box dashboard that will satisfy many of these requirements. This dashboard is preconfigured to showcase the critical logistics device operations activity. Admittedly, the dashboard might need to be reconfigured to remove sea vessel gateways, but the truck gateway functionality would be almost exactly what Tailwind Traders needs.  

### Why not use IoT Hub?  
If Tailwind Traders uses IoT Central, the company would actually be using an IoT hub that's preconfigured for its specific needs by the Connected Logistics starter template. Otherwise, the company would need to do a lot of custom development to build its own cloud-based dashboards and management systems on top of Azure IoT Hub.  

### Why not use Azure Sphere?  
Azure Sphere provides a complete solution for scenarios where security is critical. In this scenario, security is ideal, but not a critical priority. Although Azure Sphere provides an end-to-end solution that includes hardware, Tailwind Traders will use hardware from a third-party vendor. So, in this scenario, Azure Sphere is not necessary.  

## Use Azure Sphere  

Tailwind Traders wants to implement a touchless point-of-sale solution for self-checkout. The self-checkout terminals should be, above all else, secure. Each terminal must be impervious to malicious code that could create fraudulent transactions, force the company to take the systems offline during a heavy shopping period, or send transactional data to a spying organization. The terminals should also report back vital information on the company's health and allow secure updates to its software remotely.  

After reviewing many possible solutions during a request for proposal process, Tailwind Traders decides that it needs features that vendors have yet to implement. Instead of using an existing solution, the company decides to work with a leading engineering firm that specializes in IoT solutions. This approach allows the company to build a uniquely secure terminal that gives it a retail platform to build on going forward.  

Although most of the company's focus is on the terminal itself, Tailwind Traders realizes that it wants a solution that can help it make sense of all the data that will be generated by these terminals across all of its retail stores. And it wants an easy way to push software updates to its terminals.  

### Which service should you choose?  
Again, apply the decision criteria as you've been doing.  

*First*, is it critical to ensure that the device or, in this case, each point-of-sale terminal, is not compromised? Absolutely. Device security is the primary requirement.  

*Next,* does Tailwind Traders need a dashboard for reporting and management? Yes, the company requires a reporting and management dashboard.  

So, given the responses to the decision criteria, the IoT engineering firm will build a platform on top of both Azure IoT Central and Azure Sphere. Even though no specific starter template is available in Azure IoT Central for this scenario, one can easily be adapted to accommodate the kinds of reports the company wants to see and the management operations it wants to perform.  

### Why not choose IoT Hub?
By using IoT Central, Tailwind Traders would actually be using Azure IoT Hub behind the scenes as well.  

![Knowledge check IoT Fundamentals](https://user-images.githubusercontent.com/95616021/150155321-3168fa72-6924-456b-95d3-9cf569f315a5.jpg)  


____________________________________________________________


## Identify the product options  

AI is a broad classification of computing that allows a software system to perceive its environment and take action that maximizes its chance of successfully achieving its goals. A goal of AI is to create a software system that's able to adapt, or learn something on its own without being explicitly programmed to do it.  

There are two basic approaches to AI. *The first* is to employ a *deep learning system* that's modeled on the neural network of the human mind, enabling it to discover, learn, and grow through experience.  

*The second* approach is *machine learning*, a data science technique that uses existing data to train a model, test it, and then apply the model to new data to forecast future behaviors, outcomes, and trends.  

Forecasts or predictions from machine learning can make apps and devices smarter. For example, when you shop online, machine learning powers product recommendation systems that offer additional products based on what you've bought and what other shoppers have bought who have purchased similar items in the past.  

Machine learning is also used to detect credit card fraud by analyzing each new transaction and using what it has learned from analyzing millions of fraudulent transactions.  

Virtually every device or software system that collects textual, visual, and audio data could feed a machine learning model that makes that device or software system smarter about how it functions in the future.  

### Azure product options  

At a high level, there are three primary product offerings from Microsoft, each of which is designed for a specific audience and use case. Each option provides a diverse set of tools, services, and programmatic APIs. In this module, we'll merely scratch the surface of the options' capabilities.  

### Azure Machine Learning  
Azure Machine Learning is a platform for making predictions. It consists of tools and services that allow you to connect to data to train and test models to find one that will most accurately predict a future result. After you've run experiments to test the model, you can deploy and use it in real time via a web API endpoint.  

With Azure Machine Learning, you can:  

- Create a process that defines how to obtain data, how to handle missing or bad data, how to split the data into either a training set or test set, and deliver the data to the training process.  
- Train and evaluate predictive models by using tools and programming languages familiar to data scientists.  
- Create pipelines that define where and when to run the compute-intensive experiments that are required to score the algorithms based on the training and test data.  
- Deploy the best-performing algorithm as an API to an endpoint so it can be consumed in real time by other applications.  
- Choose Azure Machine Learning when your data scientists need complete control over the design and training of an algorithm using your own data. The following video discusses the basic steps required to set up a machine learning system.  


### Azure Cognitive Services  

Azure Cognitive Services provides prebuilt machine learning models that enable applications to see, hear, speak, understand, and even begin to reason. Use Azure Cognitive Services to solve general problems, such as analyzing text for emotional sentiment or analyzing images to recognize objects or faces. You don't need special machine learning or data science knowledge to use these services. Developers access Azure Cognitive Services via APIs and can easily include these features in just a few lines of code.  

While Azure Machine Learning requires you to bring your own data and train models over that data, Azure Cognitive Services, for the most part, provides pretrained models so that you can bring in your live data to get predictions on.  

Azure Cognitive Services can be divided into the following categories:  

- Language services: Allow your apps to process natural language with prebuilt scripts, evaluate sentiment, and learn how to recognize what users want.  
- Speech services: Convert speech into text and text into natural-sounding speech.   Translate from one language to another and enable speaker verification and recognition.
- Vision services: Add recognition and identification capabilities when you're analyzing pictures, videos, and other visual content.  
- Decision services: Add personalized recommendations for each user that automatically improve each time they're used, moderate content to monitor and remove offensive or risky content, and detect abnormalities in your time series data.  


### Azure Bot Service  
Azure Bot Service and Bot Framework are platforms for creating virtual agents that understand and reply to questions just like a human. Azure Bot Service is a bit different from Azure Machine Learning and Azure Cognitive Services in that it has a specific use case. Namely, it creates a virtual agent that can intelligently communicate with humans. Behind the scenes, the bot you build uses other Azure services, such as Azure Cognitive Services, to understand what their human counterparts are asking for.  

Bots can be used to shift simple, repetitive tasks, such as taking a dinner reservation or gathering profile information, on to automated systems that might no longer require direct human intervention. Users converse with a bot by using text, interactive cards, and speech. A bot interaction can be a quick question and answer, or it can be a sophisticated conversation that intelligently provides access to services.  