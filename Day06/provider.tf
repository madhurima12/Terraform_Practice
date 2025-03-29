terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.8.0"
    }
  }
  
  required_version = ">=1.11.1"
}

provider "azurerm" {
    features {
      
    }
     subscription_id ="4782d735-e64c-4b94-aea5-03a3826f1419" 
  
}