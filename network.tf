provider "google" {
  project = "resounding-net-145607"
  region  = "us-central1"
}

resource "google_compute_network" "vpc_network" {
  name = "vpc-tf"
}

resource "google_compute_subnetwork" "subnet" {
  name          = "vpc-subnet-tf"
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.vpc_network.self_link
}


