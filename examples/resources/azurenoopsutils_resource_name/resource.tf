#Storage account test
resource "azurenoopsutils_resource_name" "classic_st" {
  name          = "log2"
  resource_type = "azurerm_storage_account"
}

output "caf_name_classic_st" {
  value       = azurenoopsutils_resource_name.classic_st.result
  description = "Random result based on the resource type"
}

resource "azurenoopsutils_resource_name" "azurerm_cognitive_account" {
  name          = "cogsdemo"
  resource_type = "azurerm_cognitive_account"
  prefixes      = ["a", "z"]
  suffixes      = ["prod"]
  random_length = 5
  random_seed   = 12343
  clean_input   = true
  separator     = "-"
}

output "azurerm_cognitive_account" {
  value       = azurenoopsutils_resource_name.azurerm_cognitive_account.result
  description = "Random result based on the resource type"
}

resource "azurenoopsutils_resource_name" "multiple_resources" {
  name           = "cogsdemo2"
  resource_type  = "azurerm_cognitive_account"
  resource_types = ["azurerm_storage_account"]
  prefixes       = ["a", "b"]
  suffixes       = ["prod"]
  random_length  = 4
  random_seed    = 12343
  clean_input    = true
  separator      = "-"
}

output "multiple_resources" {
  value = azurenoopsutils_resource_name.multiple_resources.results
}

output "multiple_resources_main" {
  value = azurenoopsutils_resource_name.multiple_resources.result
}