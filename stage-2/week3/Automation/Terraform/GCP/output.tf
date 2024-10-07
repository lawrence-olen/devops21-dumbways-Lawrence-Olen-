output "ubuntu_static_ip" {
    value = google_compute_address.ip_static["ubuntu"].address
}

output "debian_static_ip" {
    value = google_compute_address.ip_static["debian"].address
}