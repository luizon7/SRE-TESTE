provider "google" {
  project = var.mb_hello_project_id
  region  = var.mb_hello_region
}

resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region

  
  deletion_protection = false

  remove_default_node_pool = true
  initial_node_count       = 1

  networking_mode = "VPC_NATIVE"
  ip_allocation_policy {}
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "primary-node-pool"
  location   = var.mb_hello_region
  cluster    = google_container_cluster.primary.name
  node_count = var.mb_hello_node_count

  node_config {
    machine_type = var.mb_hello_machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}