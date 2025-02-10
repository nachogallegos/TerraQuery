output "terraquery_dataset_id" {
  description = "ID del dataset de BigQuery"
  value       = google_bigquery_dataset.terraquery_dataset.dataset_id
}

output "ordenes_table_id" {
  description = "ID de la tabla de órdenes"
  value       = google_bigquery_table.ordenes.table_id
}
