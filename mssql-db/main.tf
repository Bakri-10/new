// Database configuration
provider "azurerm" {
  features {}
}

data "azurerm_subscription" "current" {}

locals {
  get_data = csvdecode(file("../parameters.csv"))
  purpose_parts = split("/", var.purpose)
  purpose = length(local.purpose_parts) > 0 ? local.purpose_parts[0] : "default"
  sequence = length(local.purpose_parts) > 1 ? local.purpose_parts[1] : "01"
  
  naming = {
    bu = lower(split("-", data.azurerm_subscription.current.display_name)[1])
    environment = lower(split("-", data.azurerm_subscription.current.display_name)[2])
    locations = var.location
  }

  env_location = {
    env_abbreviation = var.environment_map[local.naming.environment]
    locations_abbreviation = var.location_map[local.naming.locations]
  }
}

resource "azurerm_mssql_database" "sqldb" {
  for_each = { for idx, purpose in var.db_purpose : "${idx}" => purpose }
  
  name           = join("", [local.naming.bu, "-", local.naming.environment, "-", local.env_location.locations_abbreviation, "-", each.value, "-sqldb-", local.sequence])
  server_id      = var.server_id
  collation      = var.collation
  license_type   = "LicenseIncluded"
  sku_name       = var.skuname
  zone_redundant = var.zoneredundancy

}

output "database_ids" {
  value = [for db in azurerm_mssql_database.sqldb : db.id]
} 