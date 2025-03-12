terraform {
    required_providers{
    azurerm={
        source="hashicorp/azurerm"
        version="~> 4.8.0"

    }
  }
  required_version= ">=1.11.1"
}

provider "azurerm" {
    features {
      
    }
    subscription_id ="4782d735-e64c-4b94-aea5-03a3826f1419" 
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "terraformtutorial101"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}