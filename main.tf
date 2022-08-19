locals {
  env              = "dev"
  project          = "test-gke-admin"
  region           = "europe-west1"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=4.20.0, < 5.0.0"
    }
  }
}

provider "google" {
  project = "dev-gke-admin"
  region  = local.region
}
