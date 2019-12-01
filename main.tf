resource "google_compute_instance"  "default" {
name = "test"
machine_type = "n1-standard-1"
zone = "asia-south1-c"

boot_disk {
    initialize_params {
        image = "ubuntu-os-cloud/ubuntu-1604-lts"
    }
}

network_interface {
    network = "default"
    network_ip = "10.160.0.5"
    subnetwork = "default"
}

service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
}
}
