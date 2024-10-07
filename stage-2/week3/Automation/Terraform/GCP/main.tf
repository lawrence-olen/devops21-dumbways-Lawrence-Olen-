# VPC Network
resource "google_compute_network" "vpc_network" {
    name = "vpc-network"
    auto_create_subnetworks = false
}

# Subnet for VPC Network
resource "google_compute_subnetwork" "subnet-network" {
    name = "subnet-network"
    ip_cidr_range = "10.148.0.0/20"
    region = var.region
    network = google_compute_network.vpc_network.id
}

# Static IP for Ubuntu and Debian
resource "google_compute_address" "ip_static" {
    for_each = var.ip_static
    name = each.value
    region = var.region
}

# Firewall Rules
resource "google_compute_firewall" "allow_all2" {
    name        = "allow-all2"
    network     = google_compute_network.vpc_network.self_link
    description = "Creates firewall rule targeting tagged instances"

    allow {
        protocol  = "all"
        # ports     = ["80", "8080", "1000-2000"]
    }

    source_ranges = ["0.0.0.0/0"]  # Mengizinkan dari seluruh IP

    # source_tags = ["foo"]
    # target_tags = ["web"]
}

# Block Storage (HDD or SSD)
resource "google_compute_disk" "disk_ubuntu" {
    name = "disk-ubuntu"
    type = "pd-ssd"
    zone = var.zone
    size = 50
}

resource "google_compute_disk" "disk_debian" {
    name = "disk-debian"
    type = "pd-ssd"
    zone = var.zone
    size = 50
}


# Create New VM Ubuntu
resource "google_compute_instance" "terraform_ubuntu" {
    name         = "terraform-ubuntu"
    machine_type = var.machine_type["e2_small"]


    boot_disk {
        initialize_params {
            image = var.images_OS["ubuntu"]
            # size  = 10
        }
    }

    # Attach VPC and IP Static
    network_interface {
        network = google_compute_network.vpc_network.id
        subnetwork = google_compute_subnetwork.subnet-network.id

        access_config {
        // Ephemeral public IP
            nat_ip = google_compute_address.ip_static["ubuntu"].address
        }
    }

    # Attach Firewall 
    tags = ["allow-all2"]

    # Attach Block Storage
    attached_disk {
        source = google_compute_disk.disk_ubuntu.id
    }

    metadata = {
        ssh-keys = "crocox:${file("${path.module}/ssh_key.pub")}"
    }
}

# Create New VM Debian
resource "google_compute_instance" "terraform_debian" {
    name         = "terraform-debian"
    machine_type = var.machine_type["e2_small"]


    boot_disk {
        initialize_params {
            image = var.images_OS["debian"]
            # size  = 10
        }
    }

    # Attach VPC and IP Static
    network_interface {
        network = google_compute_network.vpc_network.id
        subnetwork = google_compute_subnetwork.subnet-network.id

        access_config {
        // Ephemeral public IP
            nat_ip = google_compute_address.ip_static["debian"].address
        }
    }

    # Attach Firewall 
    tags = ["allow-all"]

    # Attach Block Storage
    attached_disk {
        source = google_compute_disk.disk_debian.id
    }

    metadata = {
        ssh-keys = "crocox:${file("${path.module}/ssh_key.pub")}"
    }
}