terraform {
  required_version = ">= 1.5.0"

  backend "gcs" {
    bucket = google_storage_bucket.dev_state_bucket.name
    prefix = "dev"
  }
provider "google" {
  project = "your-dev-project-id"
  region  = "us-central1"
}

}
