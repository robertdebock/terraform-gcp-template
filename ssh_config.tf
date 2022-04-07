resource "local_file" "ssh_config" {
  filename = "${path.module}/ssh_config"
  content = templatefile("templates/ssh_config.tpl", {
    ip       = google_compute_instance.default.network_interface[0].access_config[0].nat_ip
    username = var.username
    }
  )
}
