resource "google_compute_network" "dev_vpc" {
  name                    = "dev-vpc"
  auto_create_subnetworks = false
}
