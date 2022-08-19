locals {
  env              = "dev"
  project          = "citizix"
  credentials_path = "./gcp-credentials.json"
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
  credentials = file(local.credentials_path)

  project = "citizix-prj"
  region  = local.region
}
