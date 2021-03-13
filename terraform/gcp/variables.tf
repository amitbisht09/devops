# environment variable
variable "env" {
  default    = "test"
}

#GCP Project ID
variable "project_id" {
  default   = "myproject-new"
}

# Path to GCP service account json file
variable "credentials_file_path" {
  default   = "./secrets/keys/tf-sa.json"
}

# default region
variable "region" {
  default   = "us-east1"
}

# default zone
variable "zone" {
  default   = "us-east1-a"
}

# default location
variable "loc" {
  default   = "eu-west6"
}

# VPC Network Name
variable "vpc_name" {
  default   = "myapp-vpc"
}

# VPC Network Subnet Region and CIDRs
variable "subnet" {
  type              = map(string)
  description       = "Application VPC Subnets and CIDRs"
  default           = {
                        private_sub_name   = "myapp-subnet-private"
                        private_sub_cidr   = "10.10.1.0/20"

                        public_sub_name    = "myapp-subnet-public"
                        public_sub_cidr    = "10.10.2.0/20"
                      }
}

# GKE master CIDR
variable "gke_master_cidr" {
  default   = "172.16.10.0/28"
}
# GKE Cluster Name
  variable "gke_cluster_name" {
      default  = "k8s-cls"
    }

# default machine type for the instances
  variable "default_machine_type" {
    default   = "g1-micro"
}

# default machine type for the instances
variable "gke_machine_type" {
  default   = "g1-small"
}

#default boot disk images for the instances
variable "boot_disk_image" {
  default   = "centos-8"
}

# setting default time_zone for cloud scheduler
variable "time_zone" {
  default   = "US/EAST"
}

variable "bucket_access_log" {
  default   = "access-log"
}
