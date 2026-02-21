resource "google_storage_bucket" "staging_state_bucket" {
  name          = "staging-terraform-state-bucket"
  location      = var.region
  storage_class = "STANDARD"

  versioning {
    enabled = true
  }

  uniform_bucket_level_access = true
}
