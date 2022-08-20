module "gke_auth" {
  source = "terraform-google-modules/kubernetes-engine/google//modules/auth"
  depends_on   = [google_container_cluster.gke]
  project_id   = var.project_id
  location     = module.gke.location
  cluster_name = module.gke.name
}

resource "local_file" "kubeconfig" {
  content  = module.gke_auth.kubeconfig_raw
  filename = "kubeconfig-${var.env_name}-${timestamp()}"
}
