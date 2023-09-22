resource "google_storage_bucket" "tf_demo" {
    name = "terraform_demo_gcp_bucket_202322"
    location = "europe-west2"
    storage_class = "nearline"
  }