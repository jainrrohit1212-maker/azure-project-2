variable "vms" {
  type = any
}

variable "subnet_ids" {
  type    = map(string)
  default = {}
}

variable "public_ip_ids" {
  type    = map(string)
  default = {}
}