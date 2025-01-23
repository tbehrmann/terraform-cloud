# versions.tf
terraform {
  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = "1.10.4"
    }
  }
}