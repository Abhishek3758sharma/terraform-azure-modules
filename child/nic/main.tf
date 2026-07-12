resource "azurerm_network_interface" "nic" {
    for_each = var.nicd
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  ip_configuration {
    name                          = "internal"
    subnet_id                     = each.value.subnet_id
     public_ip_address_id         = "/subscriptions/e1d8375b-9c7e-4859-9a72-b8ba3c52a000/resourceGroups/Rg-load/providers/Microsoft.Network/publicIPAddresses/pip1"
    private_ip_address_allocation = "Dynamic"
  }
}