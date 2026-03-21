variable "resource_group_name" {
  description = "Name of the resource_group"
  type       = string
  default = "terraform-example-rg"
}

variable "location" {
  description = "Azure region where resources will be created "
  type = string
  default = "centralindia"
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type       = string
  default = "example-vm"
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type       = string
  default = "Standard_D2s_v3"
}

variable "admin_username" {
  description = "Username for the administrator account"
  type       = string
  default = "adminuser"
}

variable "admin_password" {
  description = "Password for the administrator account"
  type       = string
  sensitive = true
}

