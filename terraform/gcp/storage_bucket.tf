resource "google_storage_bucket" "app_images" {
  name          = format("%s-%s","app_images",var.env)
  storage_class = "STANDARD"
  project       = var.project_id
  location      = var.region
  uniform_bucket_level_access = true
  lifecycle_rule {
    action  {
            type          = "SetStorageClass"
            storage_class = "ARCHIVE"
            }

    condition {
                age                   = 60
                num_newer_versions    = 0
                with_state            = "ANY"
        }
    }
}
