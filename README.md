# GCP
Google Cloud has a concept of Cloud Platform Resource Hierarchy. This enables the operator to control and fine-tune ownership, access control, and inheritance. An organization is the root node of the hierarchy. Then come the folders, the projects and then resources.

Terraform to build your first Kubernetes cluster in GKE

Prerequisites
- Create Google Cloud Account and login
- Create a project in your Google Cloud Account Cloud Console 
  - Click on the My First Projectdropdown next to the Google Cloud Platform logo and create a new project. 
- Once the project is created and you have it selected in the dropdown, on the left hand side find Kubernetes Engine → Configurationand enable the Kubernetes Engine API. 
- You will need a file with the credentials that Terraform needs to interact with the Google Cloud API to create the cluster and related networking components. Head to the IAM & Admin section of the Google Cloud Console’s navigation sidebar, and selectService Accounts.Once there, create a service account:
- Once you have created the service account, you will be prompted to select a role for it. For the purposes of this exercise, you can selectProject: Ownerfrom the Role dropdown menu:
- On the next page, click on CREATE KEY and select a JSON key type. Once created, the file will be downloaded to your computer. 


Terraform configuration layout
The layout of the hybrid cloud setup consists of the following components:

A VPC and subnet, to define the network in which cloud resources will be created within. It is strongly recommended to create a new VPC as opposed to using the default VPC. The vpc_with_internet module creates a VPC, a subnet within the VPC, a firewall to allow all traffic ingress from the created subnet, and another firewall to allow external ssh access.

VPC peering connection, to enable the corporate network in which the HDFS and Hive clusters reside to communicate with the cloud VPC






