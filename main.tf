terraform {
  backend "azurerm" {}
}
  
data "azurerm_client_config" "current" {}
  
resource "azurerm_resource_group" "rg-kbbazdevops-tf" {
  name     = "rg-kbbazdevops-tf"
  location = "uksouth"
}
  
resource "azurerm_storage_account" "sa-kbbazdevops2731" {
  name                     = "sa-kbbazdevops2731"
  resource_group_name      = azurerm_resource_group.rg-kbbazdevops-tfname
  location                 = azurerm_resource_group.rg-kbbazdevops-tf.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}