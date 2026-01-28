//my-bucket is a module that creates a Google cloud storage bucket
resource "google_storage_bucket" "my-bucket" {
  name          = "tt-githubdemo-bucket"
  project = "tt-dev-001"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

/**
provider "google" {
  project = "tt-dev-001"
  region  = "us-central1"
}
**/
