resource "google_service_account" "default" {
  account_id   = "sa-${random_string.string.result}"
  display_name = "sa-${random_string.string.result}"
  project = var.gcp_project
}

resource "random_string" "string" {
  length = 4
  upper = false
  special = false
  number = false
}

resource "google_compute_instance" "default" {
  count = var.machine_create ? 1 : 0
  name         = "${local.name_substrate}-machine"
  machine_type =   var.machine_type
  zone         = var.gcp_zone
  project = var.gcp_project
  tags = [
    "foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        env = var.env
      }
    }
  }


  network_interface {
    network = var.vcn_name
    subnetwork = var.vcn_subnetwork
  }

  metadata = {
    env = var.env
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}

resource "google_storage_bucket" "bucket" {
  count = var.buckets_create ? 1 : 0
  location = var.gcp_region
  project = var.gcp_project
  name     = "${local.name_substrate}_bucket"
}

