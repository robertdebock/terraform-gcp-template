resource "google_compute_instance" "default" {
  name         = "proxy"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }
  metadata = {
    ssh-keys = "{$var.username}:${file("${var.key_file}")}"
  }
}
