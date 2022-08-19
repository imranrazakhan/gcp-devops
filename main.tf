locals {
  env              = "qa"
  project          = "test-gke-infra"
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
  project = "test-gke-infra"
  region  = local.region
}
