 Error: creating Database (Subscription: "***"
│ Resource Group Name: "6425-dev-eus2-sgs-rg"
│ Server Name: "6425-dev-eus2-strata-sql-01"
│ Database Name: "6425-dev-eus2-events-sqldb-01"): performing CreateOrUpdate: unexpected status 409 (409 Conflict) with error: AppendPoliciesFieldsExist: Policies attempted to append some fields which already exist in the request with different values. Fields: 'tags[Environment]'. Policy identifiers:'[{"policyAssignment":{"name":"Append Required Tags From the Resource Groups to US Resources - US Assignment","id":"/providers/Microsoft.Management/managementGroups/Global-US/providers/Microsoft.Authorization/policyAssignments/AppendTagsOnUSResources"},"policyDefinition":{"name":"Append the required tags from the Resource Group to Resources - us","id":"/providers/Microsoft.Management/managementGroups/Global/providers/Microsoft.Authorization/policyDefinitions/AppendTagsOnResourcesFromResourceGroup-us","version":"1.0.0"}}]'. Please contact the subscription administrator to update the policies.
│ 
│   with azurerm_mssql_database.sqldb["0"],
│   on main.tf line 26, in resource "azurerm_mssql_database" "sqldb":
│   26: resource "azurerm_mssql_database" "sqldb" {
│ 
╵
╷
│ Error: creating Database (Subscription: "***"
│ Resource Group Name: "6425-dev-eus2-sgs-rg"
│ Server Name: "6425-dev-eus2-strata-sql-01"
│ Database Name: "6425-dev-eus2-history-sqldb-01"): performing CreateOrUpdate: unexpected status 409 (409 Conflict) with error: AppendPoliciesFieldsExist: Policies attempted to append some fields which already exist in the request with different values. Fields: 'tags[Environment]'. Policy identifiers:'[{"policyAssignment":{"name":"Append Required Tags From the Resource Groups to US Resources - US Assignment","id":"/providers/Microsoft.Management/managementGroups/Global-US/providers/Microsoft.Authorization/policyAssignments/AppendTagsOnUSResources"},"policyDefinition":{"name":"Append the required tags from the Resource Group to Resources - us","id":"/providers/Microsoft.Management/managementGroups/Global/providers/Microsoft.Authorization/policyDefinitions/AppendTagsOnResourcesFromResourceGroup-us","version":"1.0.0"}}]'. Please contact the subscription administrator to update the policies.
│ 
│   with azurerm_mssql_database.sqldb["1"],
│   on main.tf line 26, in resource "azurerm_mssql_database" "sqldb":
│   26: resource "azurerm_mssql_database" "sqldb" {
│ 
╵
