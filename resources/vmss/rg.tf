resource "azurerm_resource_group" "scale_set" {
    name = "${var.environment}-rg"
    location = var.location
    
    tags = {
        environment = var.environment
    }
}
