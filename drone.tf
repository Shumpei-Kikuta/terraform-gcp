provider "google" {
  credentials = "${file("/Users/shumpei/Desktop/develop-289207-2ba44845e256.json")}"
  project     = "develop-289207"
  region      = "asia-northeast1"
}

resource "google_compute_instance" "default" {
  name         = "drone"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
  }
}
