terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
  backend "azurerm" {
      
    resource_group_name  = "rg-prod-webapp-centralindia-01"          
    storage_account_name = "stprodapp002"                              
    container_name       = "tfstate"                            
    key                  = "prod.terraform.tfstate"                
}

}

provider "azurerm" {
  features {}
}