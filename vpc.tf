resource "google_compute_network" "vpc" {
  name                    = local.vpc_name
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "public" {
  name          = "${local.vpc_name}-public-0"
  region        = local.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.1.0.0/24"
}

resource "google_compute_subnetwork" "private" {
  name                     = "${local.vpc_name}-private-0"
  region                   = local.region
  private_ip_google_access = true
  network                  = google_compute_network.vpc.name
  ip_cidr_range            = "10.1.1.0/24"
}
