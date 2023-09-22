terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.83.0"
    }
  }
  backend "gcp_fga" {
    bucket ="tf_gcp_demo_222023"
    prefix ="terrafom/state"
  }
}

provider "google" {
  # Configuration options
  project = "my-test-gcp-5308"
  region = "europe-west2"
}

 