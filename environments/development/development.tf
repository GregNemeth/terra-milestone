variable "environment" {}
variable "location" {}
variable "vm_size" {}
variable "timezone" {}
variable "up_hours" {}
variable "up_minutes" {}

variable "down_hours" {}
variable "down_minutes" {}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.46.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "scale_set" {
  source       = "../../resources/vmss"
  environment  = "development"
  location     = var.location
  vm_size      = var.vm_size
  timezone     = var.timezone
  up_hours     = var.up_hours
  up_minutes   = var.up_minutes
  down_hours   = var.down_hours
  down_minutes = var.down_minutes

}
