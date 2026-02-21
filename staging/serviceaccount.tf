# Service account for GitHub Actions
resource "google_service_account" "github_actions" {
  account_id   = "github-actions-sa"
  display_name = "GitHub Actions Service Account"
}

# Allow pushing Docker images to Artifact Registry
resource "google_project_iam_binding" "artifact_registry_writer" {
  project = var.project_id
  role    = "roles/artifactregistry.writer"

  members = [
    "serviceAccount:${google_service_account.github_actions.email}"
  ]
}

# Allow deploying to GKE
resource "google_project_iam_binding" "gke_admin" {
  project = var.project_id
  role    = "roles/container.admin"

  members = [
    "serviceAccount:${google_service_account.github_actions.email}"
  ]
}

# Allow managing Terraform state in GCS
resource "google_project_iam_binding" "storage_admin" {
  project = var.project_id
  role    = "roles/storage.admin"

  members = [
    "serviceAccount:${google_service_account.github_actions.email}"
  ]
}

# Optional: Monitoring viewer role for dashboards
resource "google_project_iam_binding" "monitoring_viewer" {
  project = var.project_id
  role    = "roles/monitoring.viewer"

  members = [
    "serviceAccount:${google_service_account.github_actions.email}"
  ]
}
