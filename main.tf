resource "google_compute_network" "vpc_network" {
  name                    = "local"
  auto_create_subnetworks = false
}
 
resource "google_compute_router" "testrouter1" {
  name = "testrouter1"
  network = google_compute_network.vpc_network.name
  region = var.region
}