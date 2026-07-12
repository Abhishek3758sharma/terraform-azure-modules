resource "azurerm_resource_group" "rgd" {
  for_each = var.rgsd
  name = each.value.name
  location= each.value.location
}