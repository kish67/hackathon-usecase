resource "google_compute_subnetwork" "public_subnet" {
  name          = "staging-public-subnet"
  ip_cidr_range = "10.1.1.0/24"
  region        = var.region
  network       = google_compute_network.staging_vpc.id
}

resource "google_compute_subnetwork" "private_subnet" {
  name          = "staging-private-subnet"
  ip_cidr_range = "10.1.2.0/24"
  region        = var.region
  network       = google_compute_network.staging_vpc.id
}
