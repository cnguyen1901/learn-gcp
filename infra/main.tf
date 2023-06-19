resource "google_storage_bucket" "state" {
  name          = "${local.prefix}-tfstate"
  project       = var.project_id
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
  uniform_bucket_level_access = true
}


terraform {
  backend "gcs" {}
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.27.0"
    }
  }

  required_version = ">= 0.14"
}

provider "google" {
  project = var.project_id
}
