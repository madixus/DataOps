output "bigquery_dataset_id" {
  description = "BigQuery dataset ID"
  value       = google_bigquery_dataset.analytics.dataset_id
}

output "gcs_bucket_name" {
  description = "GCS bucket name"
  value       = google_storage_bucket.raw_data.name
