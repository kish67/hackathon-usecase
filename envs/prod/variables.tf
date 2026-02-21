variable "project_id" {
  description = "GCP project ID for production"
  type        = string
}

variable "region" {
  description = "Default region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Default zone"
  type        = string
  default     = "us-central1-a"
}

variable "state_bucket" {
  description = "GCS bucket for Terraform state"
  type        = string
}
