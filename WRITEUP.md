# Write-up Template

### Analyze, choose, and justify the appropriate resource option for deploying the app.

*For **both** a VM or App Service solution for the CMS app:*
- *Analyze costs, scalability, availability, and workflow*
- *Choose the appropriate solution (VM or App Service) for deploying the app*
- *Justify your choice*
- 
The system utilization rate and load cannot be predicted. First, select Appservice, which enables easy deployment, high availability, and flexible configuration changes.

VMs have fixed server and storage resources, making it easy to estimate prices.
On the other hand, it is necessary to prepare security patches, implementation of monitoring functions, and load balancer by yourself. It is necessary to consider the operating cost.


Appservice is Paas that realizes scalability and high availability. If the utilization rate is high, the cost may be higher than that of VM,
Scale-up, down, scale-out, and in can be performed non-stop, and canary release, blue-green deploy, and AB testing can be easily performed by linking with the repository, monitoring function, and deploy slot. Services based on CICD that are conscious of the application life cycle are provided. There is no need to consider the operational burden.



### Assess app changes that would change your decision.

*Detail how the app and any other needs would have to change for you to change your decision in the last section.* 

When the usage such as operation and load is constantly settled, the required resources can be estimated, and the Iaas configuration is superior to the Appsercice, including the operation cost, it is decided to change to the VM configuration. I don't need it.