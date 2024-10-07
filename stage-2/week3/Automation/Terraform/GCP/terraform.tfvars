# OS Image for Server
images_OS = {
    "ubuntu" = "ubuntu-2404-lts-amd64"
    "debian" = "debian-11"
}

# Machine Type Variable
machine_type = {
    "e2_small" = "e2-small"
    "f1_micro" = "f1-micro"
}

# IP Static Variable
ip_static = {
    "ubuntu" = "ubuntu-static-ip"
    "debian" = "debian-static-ip"
}

# Size Disk for Block Storage
disks = [
    {
        name = "disk-ubuntu"
        type = "pd-ssd"
        size = 50
    },
    {
        name = "disk-debian"
        type = "pd-ssd"
        size = 50
    }
]
