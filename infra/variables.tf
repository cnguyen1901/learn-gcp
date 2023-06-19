variable "project_id" {
  type        = string
  description = "project id"
}

variable "region" {
  type        = string
  description = "region"
}

variable "zone" {
  type        = string
  description = "zone"
}

variable "gke_num_nodes" {
  default     = 2
  description = "number of gke nodes"
}

variable "env" {
  type = string
  description = "environment name"
}
