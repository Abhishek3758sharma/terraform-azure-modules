variable "nic-nsg" {
  
}
resource "azurerm_network_interface_security_group_association" "example" {
  network_interface_id      = var.nic-nsg.network_interface_id
  network_security_group_id = var.nic-nsg.network_security_group_id
}