resource "google_compute_subnetwork" "public_subnet" {
  name          = "prod-public-subnet"
  ip_cidr_range = "10.2.1.0/24"
  region        = var.region
  network       = google_compute_network.prod_vpc.id
}

resource "google_compute_subnetwork" "private_subnet" {
  name          = "prod-private-subnet"
  ip_cidr_range = "10.2.2.0/24"
  region        = var.region
  network       = google_compute_network.prod_vpc.id
}
