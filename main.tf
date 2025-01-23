

provider "google" {
  project = "terraform-cloud"
  region = "us-central1"
  zone    = "us-central1-c"

}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
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
 

