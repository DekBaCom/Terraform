/*

The following links provide the documentation for the new blocks used
in this terraform configuration file

1. azurerm_resource_group - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group

*/
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.79.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "<resourcegroup>"
      storage_account_name = "<storage_account_name>"
      container_name       = "<ContainerName>"
      key                  = "terraform.tfstate"
  }
}


resource "azurerm_resource_group" "appgrp" {
  name     = "app-grp"
  location = "North Europe"
}