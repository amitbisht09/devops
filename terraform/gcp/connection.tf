# Cloud Provider configuration
provider "google" {
  region        = var.region
  credentials   = file(var.credentials_file_path)
  version       = "~> 3.0"
}

#sotring terraform state file to GCP Storage bucket
terraform {
  backend "gcs" {
    bucket      = "myapp-tf-state"
  }
}
