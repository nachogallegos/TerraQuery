provider "google" {
  credentials = file("C:/Users/nazho/OneDrive/Escritorio/python/TerraQuery/terraquery-credentials.json")
  project     = "terraquery"
  region      = "us-central1"
}

resource "google_bigquery_dataset" "terraquery_dataset" {
  dataset_id = "terraquery_dataset"
  location   = "US"
}

resource "google_bigquery_table" "ordenes" {
  dataset_id = google_bigquery_dataset.terraquery_dataset.dataset_id
  table_id   = "ordenes"
  schema     = jsonencode([
    {
      "name": "id_orden",
      "type": "INTEGER",
      "mode": "REQUIRED"
    },
    {
      "name": "numero_mesa",
      "type": "INTEGER",
      "mode": "NULLABLE"
    },
    {
      "name": "cantidad_clientes",
      "type": "INTEGER",
      "mode": "NULLABLE"
    },
    {
      "name": "estado_orden",
      "type": "STRING",
      "mode": "NULLABLE"
    },
    {
      "name": "monto_total",
      "type": "FLOAT",
      "mode": "NULLABLE"
    },
    {
      "name": "fecha_orden",
      "type": "TIMESTAMP",
      "mode": "NULLABLE"
    }
  ])
}

resource "google_bigquery_table" "inventario" {
  dataset_id = google_bigquery_dataset.terraquery_dataset.dataset_id
  table_id   = "inventario"
  schema     = jsonencode([
    {
      "name": "id_producto",
      "type": "INTEGER",
      "mode": "REQUIRED"
    },
    {
      "name": "nombre_producto",
      "type": "STRING",
      "mode": "REQUIRED"
    },
    {
      "name": "categoria",
      "type": "STRING",
      "mode": "NULLABLE"
    },
    {
      "name": "cantidad_stock",
      "type": "INTEGER",
      "mode": "NULLABLE"
    },
    {
      "name": "precio",
      "type": "FLOAT",
      "mode": "NULLABLE"
    }
  ])
}

resource "google_bigquery_table" "detalle_ordenes" {
  dataset_id = google_bigquery_dataset.terraquery_dataset.dataset_id
  table_id   = "detalle_ordenes"
  schema     = jsonencode([
    {
      "name": "id_item",
      "type": "INTEGER",
      "mode": "REQUIRED"
    },
    {
      "name": "id_orden",
      "type": "INTEGER",
      "mode": "REQUIRED"
    },
    {
      "name": "id_producto",
      "type": "INTEGER",
      "mode": "REQUIRED"
    },
    {
      "name": "cantidad",
      "type": "INTEGER",
      "mode": "NULLABLE"
    },
    {
      "name": "subtotal_item",
      "type": "FLOAT",
      "mode": "NULLABLE"
    }
  ])
}

resource "google_bigquery_table" "empleados" {
  dataset_id = google_bigquery_dataset.terraquery_dataset.dataset_id
  table_id   = "empleados"
  schema     = jsonencode([
    {
      "name": "id_empleado",
      "type": "INTEGER",
      "mode": "REQUIRED"
    },
    {
      "name": "nombre",
      "type": "STRING",
      "mode": "REQUIRED"
    },
    {
      "name": "apellido",
      "type": "STRING",
      "mode": "REQUIRED"
    },
    {
      "name": "cargo",
      "type": "STRING",
      "mode": "NULLABLE"
    },
    {
      "name": "fecha_contratacion",
      "type": "DATE",
      "mode": "NULLABLE"
    }
  ])
}

resource "google_bigquery_table" "turnos" {
  dataset_id = google_bigquery_dataset.terraquery_dataset.dataset_id
  table_id   = "turnos"
  schema     = jsonencode([
    {
      "name": "id_turno",
      "type": "INTEGER",
      "mode": "REQUIRED"
    },
    {
      "name": "id_empleado",
      "type": "INTEGER",
      "mode": "REQUIRED"
    },
    {
      "name": "inicio_turno",
      "type": "TIMESTAMP",
      "mode": "NULLABLE"
    },
    {
      "name": "fin_turno",
      "type": "TIMESTAMP",
      "mode": "NULLABLE"
    }
  ])
}
