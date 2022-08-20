variable "gcp_credentials" {
  description = "Credentials set in TFE workspace"
  default="gcp_credentials"
}

variable "env_name" {
  description = "The environment for the GKE cluster"
  default     = "dev"
}
variable "project_id" {
  description = "GCP project id"
  default= "test-gke-infra"
}

variable "region" {
  description = "The region to host the cluster in"
  default     = "europe-west1"
}

variable "zones" {
  description = "The region to host the cluster in"
  default     = ["europe-west4-a"]
}

variable "cluster_name" {
  description = "The name for the GKE cluster"
  default     = "qa-test-gke-infra-gke"
}

 variable "gke_num_nodes" {
  description = "number of nodes"
  default     = "1"
}

variable "vpc_name" {
  description = "The VPC name"
  default     = "qa-test-gke-infra-gke"
}


variable "network" {
  description = "The VPC network created to host the cluster in"
  default     = "gke-network"
}
