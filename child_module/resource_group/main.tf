variable "resource-group-child" {}
resource "azurerm_resource_group" "resource_group" {
    for_each = var.resource-group-child
    name = each.value.name
    location = each.value.location
  
}
  