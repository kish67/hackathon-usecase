resource "google_storage_bucket" "dev_state_bucket" {
  name          = "your-dev-terraform-state-bucket"
  location      = var.region
  storage_class = "STANDARD"

  versioning {
    enabled = true
  }

  uniform_bucket_level_access = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 365
    }
  }
}
