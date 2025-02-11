variable "primary_server_id" {
  type        = string
  description = "ID of the primary SQL Server"
}

variable "secondary_server_id" {
  type        = string
  description = "ID of the secondary SQL Server"
}

variable "database_ids" {
  type        = list(string)
  description = "List of database IDs to include in failover group"
}

variable "location" {
  type        = string
  description = "Primary location for resources"
}

variable "secondary_location" {
  type        = string
  description = "Secondary location for failover"
}

variable "purpose" {
  type        = string
  description = "Purpose of the failover group"
}

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

variable "environment" {
  type = string
  description = "Environment (dev, qa, uat, prod, fof)"
}

variable "database_license_type" {
  type = string
  default = "LicenseIncluded"
  description = "Type of license for the database"
} 