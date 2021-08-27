variable "resource_group_name" {
  type        = string
  description = "The name of resource group"
  default = "celen-demo"
}

variable "rg_location" {
  type        = string
  description = "Location of resource group"
  default =   "UK South"
}

variable "deployment_name" {
  type        = string
  description = "Deployment name"
  default   = "azure-migration"
}