provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

terraform {
  required_version = ">= 1.5.0"

  backend "gcs" {
    bucket = "prod-terraform-state-bucket"
    prefix = "prod"
  }
}
