variable "environment_map" {
  type = map
  description = "environment"
  default = {
    "dev"  = "dev"
    "uat" = "uat"
    "fof" = "fof"
    "prod" = "prod"
    "qa" = "qa"
  }
}

variable "location_map" {
  type = map
  description = "location_map"
    default = {
    "eastus2"  = "eus2"
    "centralus" = "cus"
    "uksouth" = "uks"
    "ukwest" = "ukw"
    "us"= "eus2"
  
  }

}

variable "location" {
  type = string
  description = "location"
  default = "eastus2"
}

variable "secondary_location"{
  type = string
  description = "location"
  default = "eastus2"
}

variable "purpose" {
  type        = string
  default     = "default"
  description = "(Required) The VM Role and Sequence for naming use or, submit the desired resource name (one that contains a dash)."
  validation {
    condition     = strcontains(var.purpose, "-") ? length(var.purpose) <= 30 : length(var.purpose) <= 10
    error_message = "(Required) Purpose [VM Role.Sequence] segment cannot exceed 10 characters. Name cannot exceed 80."
  }
 }

variable "purpose_rg" {
  type        = string
  default     = "default"
  description = "(Required) The purpose segment of the Resource Group name. Should not exceed 5 characters."
  validation {
    condition     = strcontains(var.purpose_rg, "-") ? length(var.purpose_rg) <= 80 : length(var.purpose_rg) <= 5
    error_message = "(Required) Purpose segment cannot exceed 5 characters. Name cannot exceed 80."
  }  
 }

variable "db_purpose" {
  type = list(string)
  description = "purpose"
  default = ["histroy", "userinterface", "events"]
}

variable "resourcegroup" {
    type = string
    description= "target rg to deploy static web app"
    default = ""
  
}

variable "domainname" {
  type =string
  description = "enterurl for my domain"
  default = "statictest.nget.nationalgrid.com"
  
}


variable "zonename" {
type = string
default= "nget.nationalgrid.com"  
}

variable "RGname" {
  type = string
  default = ""
  
}

variable "sku_tier" {
  type = string
  default = "Free"
  
}

variable "sku_size" {
  type = string
  default = "Free"
  
}
variable "subnetname" {
  type = string
  default = "5874-dev-eus2-aks-snet-02"
#  sensitive = true
  

}

variable "dbserverversion" {

  type = string
  default = "12.0"
  
}

variable "tlsversion" {

  type = string
  default = "1.2"
  
}

variable "collation" {
  type = string
  default = "SQL_Latin1_General_CP1_CI_AS"
  
}
variable "skuname" {
  type = string
  default = "S0"
  
}

variable "zoneredundancy" {
  type = bool
  default = false
  
}

variable "database_license_type" {
 type = string
default = "LicenseIncluded"
}
