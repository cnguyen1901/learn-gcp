# resource "google_service_account" "cluster_serviceaccount" {
#   account_id   = "gitlab-gke-cluster"
#   project      = var.project_id
#   display_name = "Service Account for Gitlab to authenticate with container registry and Kubernetes cluster"
# }

# resource "google_service_account_key" "cluster_serviceaccount" {
#   service_account_id = google_service_account.cluster_serviceaccount.name
# }

# resource "google_project_iam_member" "storage_role" {
#   role    = "roles/storage.objectAdmin"
#   project = var.project_id
#   member  = "serviceAccount:${google_service_account.cluster_serviceaccount.email}"
# }

# resource "google_project_iam_member" "kubernetes_developer" {
#   role    = "roles/container.developer"
#   project = var.project_id
#   member  = "serviceAccount:${google_service_account.cluster_serviceaccount.email}"
# }
