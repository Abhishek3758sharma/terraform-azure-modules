module "resource_group" {
  source = "../child/rg"
  rgsd   = var.rgvalue
}
module "storage_acc" {
  source     = "../child/st_acc"
  storaged   = var.storage_value
  depends_on = [ module.resource_group ]
}
module "virtual_network" {
  source = "../child/vnet"
  vnetd = var.vnet_value
}
module "subnet" {
   source = "../child/snet"
   subnetd = var.subnet_value
}
module "pip" {
  source = "../child/pip"
  pipd= var.pip_value
}
module "nic" {
 source = "../child/nic"
 nicd = var.nic_value
}
module "vm" {
  source = "../child/vm"
  vmd=var.vm_value
}
module "nsg" {
  source = "../child/nsg"  
  nsgd = var.nsg_value
}
# module "nic-nsg" {
#   source = "../child/nic-nsg"
#   nic-nsg = var.nic-nsg_value
  
# }