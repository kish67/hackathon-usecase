resource "google_storage_bucket" "prod_state_bucket" {
  name          = "prod-terraform-state-bucket"
  location      = var.region
  storage_class = "STANDARD"

  versioning {
    enabled = true
  }

  uniform_bucket_level_access = true
}
