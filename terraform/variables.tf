variable "project_id" {
  description = "El ID del proyecto de Google Cloud"
  type        = string
}

variable "region" {
  description = "La región en la que se creará el dataset"
  type        = string
  default     = "us-central1"
}
