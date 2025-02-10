# TerraQuery Project

## Descripción

Este proyecto tiene como objetivo la integración de diferentes tecnologías en un flujo de trabajo de ingeniería de datos. Utilizando **Terraform**, **BigQuery**, y **Google Cloud Platform**, el proyecto automatiza la infraestructura de base de datos, creando y gestionando tablas e interacciones mediante un pipeline.

**Tecnologías utilizadas:**
- Terraform
- Google Cloud BigQuery
- Google Cloud Storage
- Python

Este repositorio también utiliza **Git LFS** para almacenar archivos grandes como proveedores de Terraform.

## Estructura del proyecto

- `main.tf`: Definición de la infraestructura, incluyendo la creación de un dataset en Google BigQuery y la integración con las tablas correspondientes.
- `variables.tf`: Archivos de variables para parametrizar los recursos de la infraestructura.
- `outputs.tf`: Resultados esperados de la infraestructura definida en `main.tf`.
- `schema.json`: Define la estructura de las tablas en BigQuery, incluyendo las columnas y tipos de datos.

## Pasos para ejecutar el proyecto

### 1. Clonar el repositorio:

```bash
git clone https://github.com/nachogallegos/TerraQuery.git
cd TerraQuery
