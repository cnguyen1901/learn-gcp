# resource "google_compute_network" "vpc" {
#   name                    = "${local.prefix}-vpc"
#   project                 = var.project_id
#   auto_create_subnetworks = false
# }

# resource "google_compute_subnetwork" "subnet" {
#   name          = "${local.prefix}-subnet"
#   project       = var.project_id
#   region        = var.region
#   network       = google_compute_network.vpc.name
#   ip_cidr_range = "10.0.0.0/24"
# }
