resource "google_artifact_registry_repository" "dev_repo" {
  provider = google
  location = var.region
  repository_id = "dev-repo"
  description   = "Artifact Registry for Dev environment"
  format        = "DOCKER"
}
