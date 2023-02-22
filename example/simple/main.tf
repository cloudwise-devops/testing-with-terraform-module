resource "google_compute_network" "vpc_network" {
  project                 = var.gcp_project
  name                    = "${var.name}-vpc-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnetwork" {
  ip_cidr_range = "192.168.11.0/24"
  name          = "test"
  network       = google_compute_network.vpc_network.id
}


module "test" {
  source = "../../"
  name   = var.name
  gcp_project = var.gcp_project
  vcn_name = google_compute_network.vpc_network.name
  vcn_subnetwork = google_compute_subnetwork.subnetwork.name
}