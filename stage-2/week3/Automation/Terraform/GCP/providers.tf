terraform {
    required_providers {
        google = {
        source = "hashicorp/google"
        version = "6.5.0"
        }
    }
}

provider "google" { 
    project = var.gcp_project_id
    credentials = var.credentials
    region = var.region
    zone = var.zone
}