
resource "azurerm_resource_group" "demo-import" {
  name     = "demo-import"
  location = "eastus" 
}
resource "azurerm_virtual_network" "vnet-import" {
  name = "vnet-import"
  location = azurerm_resource_group.demo-import.location
  resource_group_name = azurerm_resource_group.demo-import.name
  address_space = ["10.0.0.0/16"]
  dns_servers   = ["10.0.0.4", "10.0.0.5"]
}
