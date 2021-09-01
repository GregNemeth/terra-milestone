resource "azurerm_resource_group" "sale_set" {
    name = "${var.environment}-rg"
    location = var.location
    
    tags = {
        environment = var.environment
    }
}
