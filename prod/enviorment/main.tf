module "azurerm_resource_group" {
  source = "../../child/azurerm_resource_group"

  rg_name = var.rg
}

module "azurerm_storage_account" {
  source = "../../child/azurerm_storage_account"

  storage_account10 = var.storage_account11
}

module "azurerm_virtual_network" {
  source = "../../child/azurerm_virtual_network"

  virtual_network = var.virtual_networks
}

module "azurerm_subnet" {
  source = "../../child/azurerm_subnet"

  subnets = var.subnet
}

module "azurerm_pip" {
  source = "../../child/azurerm_pip"

  public_ips = var.public_ip
}

module "azurerm_virtual_machine" {
  source = "../../child/azurerm_virtual_machine"

  vms = var.vm
}

