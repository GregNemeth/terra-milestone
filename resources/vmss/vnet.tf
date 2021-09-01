resource "azurerm_virtual_network" "scale_set" {
    name = "${var.environment}-vnet"
    resource_group_name = azurerm_resource_group.scale_set.name
    location = var.location
    address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "internal" {
    name = "${var.environment}-subnet"
    virtual_network_name = azurerm_virtual_network.scale_set.name
    resource_group_name = azurerm_resource_group.scale_set.name
    address_prefixes = ["10.0.0.0/24"]
}
