rg = {
  rg11 = {
    name = "rn16"
  location = "centralindia" }
}

storage_account11 = {
  storage_r = {
    name                     = "rohitstorage26dev"
    resource_group_name      = "rn16"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

virtual_networks = {
  Vnet_1 = {
    name                = "vnet_54"
    resource_group_name = "rn16"
    location            = "centralindia"
    address_space       = ["10.39.0.0/16"]
  }
}

subnet = {
  subnet_11 = {
    name                 = "frontend-subnet"
    resource_group_name  = "rn16"
    virtual_network_name = "vnet_54"
    address_prefixes     = ["10.39.1.0/24"]
  }
}
public_ip = {
  pip1 = {
    name                = "pip-frontend"
    location            = "Central India"
    resource_group_name = "rn16"
    allocation_method   = "Static"
  }
}
vm = {
  vm_1 = {
    nic_name                 = "frontend-vm_nic01"
    resource_group_name      = "rn16"
    location                 = "centralindia"
    nic_subnet_name          = "frontend-subnet"
    nic_virtual_network_name = "vnet_54"
    nic_public_ip_name       = "pip-frontend"
    vms_name                 = "frontend-vm"
    vms_size                 = "Standard_B2s_v2"
    admin_username           = "adminuser"
    admin_password           = "Admi@123"
  }
}
