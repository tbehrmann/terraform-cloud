variable "region" {
    description = "region"
    default     = "us-central1"
    }

variable "zone" {
    default     = "us-central1-c"
}

variable "gcp_credentials" {
  type = string
  sensitive = true
  description = "Google Cloud service account credentials"
}