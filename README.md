Invalid workflow file: .github/workflows/mysql_server.yml#L83
The workflow is not valid. .github/workflows/mysql_server.yml (Line: 83, Col: 17): Unexpected symbol: '"eastus2-"'. Located at position 32 within expression: contains(inputs.location_pair, "eastus2-") ? "eastus2" : "centralus" .github/workflows/mysql_server.yml (Line: 99, Col: 17): Unexpected symbol: '"eastus2"'. Located at position 34 within expression: startsWith(inputs.location_pair, "eastus2") ? "eastus2" : "centralus"
