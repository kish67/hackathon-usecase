# Public Subnets (two AZs)
resource "google_compute_subnetwork" "public_subnet_a" {
  name          = "staging-public-subnet-a"
  ip_cidr_range = "10.10.1.0/24"
  region        = var.region
  network       = google_compute_network.staging_vpc.id
}

resource "google_compute_subnetwork" "public_subnet_b" {
  name          = "staging-public-subnet-b"
  ip_cidr_range = "10.10.2.0/24"
  region        = var.region
  network       = google_compute_network.staging_vpc.id
}

# Private Subnets (two AZs)
resource "google_compute_subnetwork" "private_subnet_a" {
  name          = "staging-private-subnet-a"
  ip_cidr_range = "10.10.3.0/24"
  region        = var.region
  network       = google_compute_network.staging_vpc.id
}

resource "google_compute_subnetwork" "private_subnet_b" {
  name          = "staging-private-subnet-b"
  ip_cidr_range = "10.10.4.0/24"
  region        = var.region
  network       = google_compute_network.staging_vpc.id
}
