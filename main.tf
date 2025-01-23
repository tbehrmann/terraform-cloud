Provider configuration

provider "gcp" {
  project = "terraform-cloud"
  region = "us-east-1"

}



resource "google_compute_network" "vpc_network" {
  name                    = "local"
  auto_create_subnetworks = false
}
 
resource "google_compute_router" "testrouter1" {
  name = "testrouter1"
  network = google_compute_network.vpc_network.name
  region = var.region
}
 
resource "google_compute_router" "testrouter1" {
  name = "testrouter2"
  network = google_compute_network.vpc_network.name
  region = var.region
}

resource "google_compute_network" "vpc_network" {
  name                    = "local"
  auto_create_subnetworks = false
}

resource "google_compute_router" "testrouter1" {
  name = "testrouter3"
  network = google_compute_network.vpc_network.name
  region = var.region
}