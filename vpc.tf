resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "public" {
  name          = "${var.vpc_name}-public-0"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.1.0.0/24"
}

resource "google_compute_subnetwork" "private" {
  name                     = "${var.vpc_name}-private-0"
  region                   = var.region
  private_ip_google_access = true
  network                  = google_compute_network.vpc.name
  ip_cidr_range            = "10.1.1.0/24"
}
