resource "google_artifact_registry_repository" "prod_repo" {
  provider      = google
  location      = var.region
  repository_id = "prod-repo"
  description   = "Artifact Registry for production environment"
  format        = "DOCKER"
}
