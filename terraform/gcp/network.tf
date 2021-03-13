# Create a VPC
resource "google_compute_network" "myapp_vpc" {
  name                            = format("%s-%s",var.vpc_name,var.env)
  project                         = var.project_id
  routing_mode                    = "REGIONAL"
  auto_create_subnetworks         = "false"  
}

# Create a public Subnet
resource "google_compute_subnetwork" "public_subnet" {
  name                            = format("%s-%s",var.subnet["public_sub_name"],var.env)
  project                         = var.project_id
  region                          = var.region
  network                         = google_compute_network.myapp_vpc.name
  ip_cidr_range                   = var.subnet["public_sub_cidr"]
  private_ip_google_access        = "true"
}

# Create a private Subnet
resource "google_compute_subnetwork" "private_subnet" {
  name                            = format("%s-%s",var.subnet["private_sub_name"],var.env)
  project                         = var.project_id
  region                          = var.region
  network                         = google_compute_network.myapp_vpc.name
  ip_cidr_range                   = var.subnet["private_sub_cidr"]
  private_ip_google_access        = "true"
}
