resource "google_storage_bucket" "tf_demo" {
    name = "terraform_demo_gcp_bucket_202322"
    location = "europe-west2"
    storage_class = "nearline"
  }

  resource "google_compute_instance" "terafom_demo" {
    name = "tf-gcp-demo-202322"
    machine_type = "e2-standard-2"
    zone = "europe-west2-b"
    tags = ["dev"]
    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-11"
      }
    }
    network_interface {
      network = "default"
      access_config {
        
      }
    }
  }