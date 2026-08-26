data "azurerm_storage_container" "storage_container_lookup" {
  for_each = var.storage_container_lookup

  name               = each.value.name
  storage_account_id = each.value.storage_account_id
  metadata           = each.value.metadata
}

