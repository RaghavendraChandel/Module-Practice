module "resource-group" {
    source = "../child_module/resource_group"
    resource-group-child = var.resource-group
  
}


module "azure_storage" {
  source   = "../child_module/storage_account"
  storage-child = var.storage-account
  depends_on = [ module.resource-group ]
  }

module "virtual-net" {
    source = "../child_module/virtual_network"
    virtual-network-child =  var.virtual-network
    depends_on = [ module.azure_storage]
}
module "subnet" {

source = "../child_module/subnet"
subnet-child  = var.subnet
depends_on = [ module.virtual-net ]
  
}

module "subnet" {
source = "../child_module/subnet"
subnet-child  = var.subnet
depends_on = [ module.virtual-net ]
  
}
