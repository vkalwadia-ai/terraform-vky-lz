rg_name = {
  rg1 = {
    rg_name     = "rg1"
    rg_location = "westus"
  }
    rg2 = {
    rg_name     = "rg2"
    rg_location = "westus"
  }
  rg3 = {
    rg_name     = "rg3"
    rg_location = "westus"
  }
}
vnet_name = {
  vnet1 = {
    vnet_name     = "vnet1"
    address_space = ["10.0.0.0/16"]
    location      = "westus"
    rg_name       = "rg1"
  }
}
subnet_name = {
  subnet1 = {
    subnet_name      = "frontend-subnet"
    address_prefixes = ["10.0.1.0/24"]
    vnet_name        = "vnet1"
    rg_name          = "rg1"
  }
  subnet2 = {
    subnet_name      = "backend-subnet"
    address_prefixes = ["10.0.2.0/24"]
    vnet_name        = "vnet1"
    rg_name          = "rg1"
  }
}
pip_name = {
  pip1 = {
    pip_name          = "frontend-pip"
    location          = "westus"
    rg_name           = "rg1"
    allocation_method = "Static"
  }
  pip2 = {
    pip_name          = "backend-pip"
    location          = "westus"
    rg_name           = "rg1"
    allocation_method = "Static"
  }
}
nic_name = {
  nic1 = {
    nic_name                          = "frontend-nic"
    nic_location                      = "westus"
    nic_rg_name                       = "rg1"
    nic_ip_config_name                = "frontend-ip-config"
    nic_private_ip_address_allocation = "Dynamic"
    subnet_name                       = "frontend-subnet"
    rg_name                           = "rg1"
    vnet_name                         = "vnet1"
    pip_name                          = "frontend-pip"
  }
  nic2 = {
    nic_name                          = "backend-nic"
    nic_location                      = "westus"
    nic_rg_name                       = "rg1"
    nic_ip_config_name                = "backend-ip-config"
    nic_private_ip_address_allocation = "Dynamic"
    subnet_name                       = "backend-subnet"
    rg_name                           = "rg1"
    vnet_name                         = "vnet1"
    pip_name                          = "backend-pip"
  }
}
vm_name = {
  vm1 = {
    vm_name                         = "frontend-vm"
    vm_rg_name                      = "rg1"
    vm_location                     = "westus"
    vm_size                         = "Standard_B1s"
    vm_admin_username               = "vkalwadia"
    vm_admin_password               = "Gopal@121"
    vm_os_disk_caching              = "ReadWrite"
    vm_os_disk_storage_account_type = "Standard_LRS"
    vm_image_publisher              = "Canonical"
    vm_image_offer                  = "UbuntuServer"
    vm_image_sku                    = "18.04-LTS"
    vm_image_version                = "latest"
    nic_name                        = "frontend-nic"
    rg_name                         = "rg1"
    subnet_name                     = "frontend-subnet"
    vnet_name                       = "vnet1"
  }
  vm2 = {
    vm_name                         = "backend-vm"
    vm_rg_name                      = "rg1"
    vm_location                     = "westus"
    vm_size                         = "Standard_B1s"
    vm_admin_username               = "vkalwadia"
    vm_admin_password               = "Gopal@121"
    vm_os_disk_caching              = "ReadWrite"
    vm_os_disk_storage_account_type = "Standard_LRS"
    vm_image_publisher              = "Canonical"
    vm_image_offer                  = "UbuntuServer"
    vm_image_sku                    = "18.04-LTS"
    vm_image_version                = "latest"
    nic_name                        = "backend-nic"
    rg_name                         = "rg1"
    subnet_name                     = "backend-subnet"
    vnet_name                       = "vnet1"
  }
}