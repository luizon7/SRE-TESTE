provider "google" {
  project = var.mb_hello_project_id
  region  = var.mb_hello_region
}

resource "google_container_cluster" "mb_hello" {
  name     = var.mb_hello_cluster_name
  location = var.mb_hello_region

  deletion_protection = false

  remove_default_node_pool = true
  initial_node_count       = 1

  networking_mode = "VPC_NATIVE"
  ip_allocation_policy {}
}

resource "google_container_node_pool" "mb_hello_nodes" {
  name       = "${var.mb_hello_cluster_name}-node-pool"
  location   = var.mb_hello_region
  cluster    = google_container_cluster.mb_hello.name
  node_count = var.mb_hello_node_count

  node_config {
    machine_type = var.mb_hello_machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}
