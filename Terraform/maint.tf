resource "google_bigquery_dataset" "analytics" {
  dataset_id = var.dataset_id
  location   = "EU"

  labels = {
    environment = "dev"
    managed_by  = "terraform"
  }
}
resource "google_storage_bucket" "raw_data" {
  name     = var.bucket_name
  location = var.region

  uniform_bucket_level_access = true

  labels = {
    environment = "dev"
    managed_by  = "terraform"
  }
}
