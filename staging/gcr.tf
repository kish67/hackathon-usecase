resource "google_artifact_registry_repository" "staging_repo" {
  provider = google
  location = var.region
  repository_id = "staging-repo"
  description   = "Artifact Registry for staging environment"
  format        = "DOCKER"
}
