module "rg" {
  source  = "./azurerm_rg"
  rg_name = var.rg_name

}
module "vnet" {
  depends_on = [module.rg]
  source     = "./azurerm_vnet"
  vnet_name  = var.vnet_name

}
module "publicip" {
  depends_on = [module.rg]
  source     = "./azurerm_publicip"
  pip_name   = var.pip_name
}
module "subnet" {
  depends_on  = [module.vnet]
  source      = "./azurerm_subnet"
  subnet_name = var.subnet_name
}
module "nic" {
  depends_on = [module.subnet, module.publicip]
  source     = "./azurerm_nic"
  nic_name   = var.nic_name
}
module "vm" {
  depends_on = [module.nic]
  source     = "./azurerm_vm"
  vm_name    = var.vm_name
}