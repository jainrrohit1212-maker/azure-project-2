module "azurerm_resource_group1" {
  source = "../../child/azurerm_resource_group"

  rg_name = var.rg
}

module "azurerm_storage_account" {
  source     = "../../child/azurerm_storage_account"
  depends_on = [module.azurerm_resource_group1]

  storage_account10 = var.storage_account11
}

module "azurerm_virtual_network" {
  source     = "../../child/azurerm_virtual_network"
  depends_on = [module.azurerm_resource_group1]

  virtual_network = var.virtual_networks
}

module "azurerm_subnet" {
  source     = "../../child/azurerm_subnet"
  depends_on = [module.azurerm_virtual_network]

  subnets = var.subnet
}

module "azurerm_pip" {
  source     = "../../child/azurerm_pip"
  depends_on = [module.azurerm_resource_group1]

  public_ips = var.public_ip
}

module "azurerm_virtual_machine" {
  source     = "../../child/azurerm_virtual_machine"
  depends_on = [module.azurerm_subnet, module.azurerm_pip]

  vms           = var.vm
  subnet_ids    = module.azurerm_subnet.subnet_ids
  public_ip_ids = module.azurerm_pip.public_ip_ids
}
