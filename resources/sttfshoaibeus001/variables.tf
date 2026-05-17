variable "azurerm_resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-shoaib-projects-eus-001"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "storage_account_name" {
  description = "Name of the storage account — must be globally unique, 3-24 lowercase alphanumeric"
  type        = string
  default     = "sttfshoaibeus001"
}

variable "environment" {
  description = "Environment name e.g. dev, test, prod"
  type        = string
  default     = "test"
}
