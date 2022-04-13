terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.16.0"
    }
    local = {
      source = "hashicorp/local"
      version = "2.2.2"
    }
  }
}

provider "google" {
  project = "roberts-project-23"
  region  = "us-central1"
}
