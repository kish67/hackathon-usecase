resource "google_container_cluster" "prod_gke" {
  name     = "prod-gke-cluster"
  location = var.region

  network    = google_compute_network.prod_vpc.name
  subnetwork = google_compute_subnetwork.private_subnet.name

  initial_node_count = 3

  node_config {
    machine_type = "e2-medium"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
