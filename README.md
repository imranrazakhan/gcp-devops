# gcp-devops
Google Cloud has a concept of Cloud Platform Resource Hierarchy. This enables the operator to control and fine-tune ownership, access control, and inheritance. An organization is the root node of the hierarchy. Then come the folders, the projects and then resources.

Terraform configuration layout
The layout of the hybrid cloud setup consists of the following components:

A VPC and subnet, to define the network in which cloud resources will be created within. It is strongly recommended to create a new VPC as opposed to using the default VPC. The vpc_with_internet module creates a VPC, a subnet within the VPC, a firewall to allow all traffic ingress from the created subnet, and another firewall to allow external ssh access.

VPC peering connection, to enable the corporate network in which the HDFS and Hive clusters reside to communicate with the cloud VPC






