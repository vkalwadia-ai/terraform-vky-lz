resource "azurerm_network_interface" "nic" {
    for_each = var.nic_name
    name                = each.value.nic_name
    location            = each.value.nic_location
    resource_group_name = each.value.nic_rg_name
    ip_configuration {
        name                          = each.value.nic_ip_config_name
        subnet_id                     = data.azurerm_subnet.subnet[each.key].id
        private_ip_address_allocation = each.value.nic_private_ip_address_allocation
        public_ip_address_id          = data.azurerm_public_ip.pip[each.key].id
    }
  
}