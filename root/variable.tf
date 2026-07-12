variable "rgvalue" {

}
variable "storage_value" {

}
variable "vnet_value" {
  
}
variable "subnet_value" {
  
}
variable "pip_value" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
    sku                 = string
  }))
}
variable "nic_value" {
  
}
variable "vm_value" {
  
}
variable "nsg_value" {
  
}
variable "nic-nsg_value" {
  
}