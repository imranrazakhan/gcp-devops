output "project_id" {
  value       = var.project_id
  description = "GCloud Project ID"
}

output "region" {
  value       = var.region
  description = "GCloud Region"
}

output "zones" {
  value       = var.zones
  description = "Node Zones"
}

output "cluster_name" {
  description = "Cluster name"
  value       = var.cluster_name
}

output "ca_certificate" {
  value = module.gke_auth.cluster_ca_certificate
  sensitive = true 
}

output "kubeconfig_raw" {
  value = module.gke_auth.kubeconfig_raw
  sensitive = true 
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
