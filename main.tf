provider "azurerm" {
    alias = "eastus"
    features{}

}

provider "azurerm" {
    alias = "westus"
    features{}

}

resource "azurerm_resource_group"{
    
}