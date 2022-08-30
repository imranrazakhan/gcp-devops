# Kubernetes Provider
provider "kubernetes" {
  config_context_cluster = "${google_container_cluster.gke.name}"
  load_config_file       = false
  host                   = "https://${data.google_container_cluster.my_cluster.endpoint}"
  token                  = "${data.google_client_config.default.access_token}"
  cluster_ca_certificate = "${base64decode(data.google_container_cluster.my_cluster.master_auth.0.cluster_ca_certificate)}"
}

# Deploy resources on GKE
resource "kubernetes_namespace" "example" {
  metadata {
    annotations = {
      name = "example-annotation"
    }

    labels = {
      mylabel = "label-value"
    }

    name = "terraform-example-namespace"
  }
}
