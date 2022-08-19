locals {
  cluster_name  = "${local.env}-${local.project}-gke"
  gke_num_nodes = 1
}

resource "google_container_cluster" "gke" {
  name     = local.cluster_name
  location = local.region

  remove_default_node_pool = true
  initial_node_count       = 1

  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.public.name
}

# Separately Managed Node Pool
resource "google_container_node_pool" "gke-nodes" {
  name       = "${local.cluster_name}-node-pool"
  location   = local.region
  cluster    = local.cluster_name
  node_count = local.gke_num_nodes

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels = {
      env = local.env
    }

    # preemptible  = true
    machine_type = "n1-standard-1"
    tags         = ["gke-node", "${local.project}-gke"]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}

output "gke_endpoint" {
  value = google_container_cluster.gke.endpoint
}

output "gke_master_version" {
  value = google_container_cluster.gke.master_version
}

output "gke-node-urls" {
  value = google_container_node_pool.gke-nodes.instance_group_urls
}
