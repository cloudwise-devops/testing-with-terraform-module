variable "name" {
  type        = string
  description = "project name"
}

variable "env" {
  description = "ENV name where we deploy"
  type        = string
  default     = "test"
}

variable "machine_create" {
  default     = true
  description = "Create vm machine"
  type        = bool
}

variable "machine_type" {
  default = "e2-medium"
  type    = string
}


variable "vcn_name" {
  description = "VCN name"
  type        = string
}

variable "vcn_subnetwork" {
  description = "VCN subnetwork name"
  type        = string
}

variable "gcp_zone" {
  type        = string
  description = "Google cloud zone"
  default     = "europe-west4-a"
}

variable "gcp_project" {
  type        = string
  description = "GCP project name"
}

variable "gcp_region" {
  type        = string
  description = "Google cloud region"
  default     = "europe-west4"
}


variable "buckets_create" {
  default     = false
  type        = bool
  description = "create buckets for deployment"
}


