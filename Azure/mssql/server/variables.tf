variable "environment_map" {
  type = map(string)
  default = {
    "dev"  = "dev"
    "uat" = "uat"
    "fof" = "fof"
    "prod" = "prod"
    "qa" = "qa"
  }
}

variable "location_map" {
  type = map(string)
  default = {
    "eastus2"  = "eus2"
    "centralus" = "cus"
    "uksouth" = "uks"
    "ukwest" = "ukw"
    "us" = "eus2"
  }
}

variable "location" {
  type        = string
  description = "Primary location for resources"
}

variable "secondary_location" {
  type        = string
  description = "Secondary location for failover server"
}

variable "environment" {
  type        = string
  description = "Environment (dev, qa, prod)"
}

variable "purpose" {
  type        = string
  description = "Purpose of the SQL server"
}

variable "purpose_rg" {
  type        = string
  description = "Resource group purpose"
}

variable "dbserverversion" {
  type        = string
  default     = "12.0"
  description = "SQL Server version"
}

variable "tlsversion" {
  type        = string
  default     = "1.2"
  description = "Minimum TLS version"
}

variable "subnetname" {
  type        = string
  description = "Name of the subnet for private endpoint"
}

variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
  default     = ""
}

variable "vnet_resource_group" {
  type        = string
  description = "Resource group of the virtual network"
  default     = ""
}

variable "database_license_type" {
  type = string
  default = "LicenseIncluded"
  description = "Type of license for the database"
}

variable "resourcegroup" {
  type = string
  description = "Target resource group"
  default = ""
} 