resource "azurerm_linux_virtual_machine" "vm" {
    for_each = var.vm_name
    name                = each.value.vm_name
    resource_group_name = each.value.vm_rg_name
    location            = each.value.vm_location
    size                = each.value.vm_size
    admin_username      = each.value.vm_admin_username
    admin_password      = each.value.vm_admin_password
    network_interface_ids = [data.azurerm_network_interface.nic[each.key].id]
  

os_disk {
    caching              = each.value.vm_os_disk_caching
    storage_account_type = each.value.vm_os_disk_storage_account_type
}
source_image_reference {
    publisher = each.value.vm_image_publisher
    offer     = each.value.vm_image_offer
    sku       = each.value.vm_image_sku
    version   = each.value.vm_image_version
}
}