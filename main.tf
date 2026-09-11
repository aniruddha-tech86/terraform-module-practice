module "resource" {
  source = "../child module/resource group"
  anirud = var.resource
}
module "vnets" {
  source = "../child module/vnet"
  vnet   = var.virtual
}
module "subnets" {
  source = "../child module/subnet"
  subnet = var.subnets

}
module "public_ip" {
  source    = "../child module/public_ip"
  public_ip = var.public_ip

}
module "vm" {
  source              = "../child module/vm"
  resource_group_name = "tripura-rg"
  location            = "eastus"
  subnet_id           = "/subscriptions/fce5ed4b-285b-4788-8843-106cb17f385b/resourceGroups/tripura-rg/providers/Microsoft.Network/virtualNetworks/anirud-network/subnets/subnet1"
  public_ip_id        = "/subscriptions/fce5ed4b-285b-4788-8843-106cb17f385b/resourceGroups/tripura-rg/providers/Microsoft.Network/publicIPAddresses/pip-1"
}

# practicing Terraform module with Git branches
