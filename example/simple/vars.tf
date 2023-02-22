variable "name" {
  type = string
}
variable "gcp_project" {
  type = string
}

variable "gcp_region" {
  type = string
  description = "Google cloud region"
}

variable "gcp_zone" {
  type = string
}