variable "gcp_project_id" {
    type = string
    description = "ID of The Project Encode"
    # default = "YmFsbXktYXRvbS00MzY4MDYtcjc="
    default = "balmy-atom-436806-r7"
}

variable "credentials" {
    type = string
    description = "Key JSON for Authentication Google Cloud"
    default = "./key.json"
}

variable "region" {
    type = string
    description = "Region for new Server"
    default = "asia-southeast1"
}

variable "zone" {
    type = string
    description = "Zone for new Server"
    default = "asia-southeast1-a"
}

variable "images_OS" {
    type = map(string)
    description = "Using images for OS"
}

variable "machine_type" {
    type = map(string)
    description = "Version of Machine Type VM"
}

variable "ip_static" {
    type = map(string)
    description = "IP Static for VM"
}

variable "disks" {
    type = list(object({
        name = string
        type = string
        size = number
    }))
    description = "Size Disk for Block Storage"
}