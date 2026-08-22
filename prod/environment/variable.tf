variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
  sensitive   = true
}

variable "client_id" {
  type        = string
  description = "Azure Service Principal Client ID"
  sensitive   = true
}

variable "client_secret" {
  type        = string
  description = "Azure Service Principal Client Secret"
  sensitive   = true
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
  sensitive   = true
}

variable "rg" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "storage_account11" {
  type = object({
    storage_r = object({
      name                     = string
      resource_group_name      = string
      location                 = string
      account_tier             = string
      account_replication_type = string
    })
  })
}

variable "virtual_networks" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
  }))
}

variable "subnet" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "public_ip" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
  }))
}

variable "vm" {
  type = map(object({
    nic_name                 = string
    resource_group_name      = string
    location                 = string
    nic_subnet_name          = string
    nic_virtual_network_name = string
    nic_public_ip_name       = string
    vms_name                 = string
    vms_size                 = string
    admin_username           = string
    admin_password           = string
  }))
}

