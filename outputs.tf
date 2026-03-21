output "resource_group_name" {
	description = "The name of the created resource group"
	value       = azurerm_resource_group.example_rg.name
}

output "vm_name" {
	description = "The name of the created virtual machine"
	value       = azurerm_virtual_machine.example_vm.name
}

output "vm_private_ip" {
	description = "The private IP address of the VM"
	value       = azurerm_network_interface.example_nic.private_ip_address
}
