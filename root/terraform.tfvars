rgvalue = {
  rg1 = {
    name     = "Rg-load"
    location = "centralindia"
  }
}
storage_value = {
  st1 = {
    name                     = "storageabhishek3758"
    resource_group_name      = "Rg-load"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}
vnet_value = {
  vnet1={
    name                = "vnet_load"
  location            = "centralindia"
  resource_group_name = "Rg-load"
  address_space       = ["10.0.0.0/16"]
  }
}
subnet_value = {
  subnet1={
    name                 = "frontend-subnet"
  resource_group_name  = "RG-load"
  virtual_network_name = "vnet_load"
  address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2={
    name                 = "backend-subnet"
  resource_group_name  = "RG-load"
  virtual_network_name = "vnet_load"
  address_prefixes     = ["10.0.2.0/24"]
  }
}
pip_value = {
  pip1 = {
    name                = "pip1"
    location            = "centralindia"
    resource_group_name = "Rg-load"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}
nic_value = {
  nic1 = {
    name                = "load-nic"
    location            = "centralindia"
    resource_group_name = "Rg-load"
    subnet_id           = "/subscriptions/e1d8375b-9c7e-4859-9a72-b8ba3c52a000/resourceGroups/RG-load/providers/Microsoft.Network/virtualNetworks/vnet_load/subnets/backend-subnet"
  }
}
vm_value = {
    vm1 = {
  name                  ="ecodry"
  location              = "centralindia"
  resource_group_name   = "Rg-load"
  network_interface_ids = ["/subscriptions/e1d8375b-9c7e-4859-9a72-b8ba3c52a000/resourceGroups/Rg-load/providers/Microsoft.Network/networkInterfaces/load-nic"]
  vm_size               = "Standard_B2ps_v2"
    publisher = "Canonical"
  offer     = "ubuntu-24_04-lts"
  sku       = "server-arm64"
  version   = "latest"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
    computer_name  = "hostname"
    admin_username = "Ecodry"
    admin_password = "Ecodry1234"
  }
  
}
nsg_value={
  nsg1={
      name                = "acceptanceTestSecurityGroup1"
  location            = "centralindia"
  resource_group_name = "Rg-load"
     name                       = "ecodry"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  
  }
}
nic-nsg_value = {
    network_interface_id      = ["/subscriptions/e1d8375b-9c7e-4859-9a72-b8ba3c52a000/resourceGroups/Rg-load/providers/Microsoft.Network/networkInterfaces/load-nic"]
  network_security_group_id = ["/subscriptions/e1d8375b-9c7e-4859-9a72-b8ba3c52a000/resourceGroups/Rg-load/providers/Microsoft.Network/networkSecurityGroups/ecodry"]
}