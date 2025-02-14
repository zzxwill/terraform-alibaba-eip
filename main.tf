module "eip" {
  source = "github.com/zzxwill/terraform-alicloud-eip"
  name = var.name
  bandwidth = var.bandwidth
}

variable "name" {
  description = "Name to be used on all resources as prefix. Default to 'TF-Module-EIP'."
  default = "TF-Module-EIP"
  type = string
}

variable "bandwidth" {
  description = "Maximum bandwidth to the elastic public network, measured in Mbps (Mega bit per second)."
  type = number
  default = 5
}

output "EIP_ADDRESS" {
  description = "The elastic ip address."
  value = module.eip.this_eip_address.0
}