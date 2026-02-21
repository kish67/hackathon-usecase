resource "google_compute_network" "staging_vpc" {
  name                    = "staging-vpc"
  auto_create_subnetworks = false
}
