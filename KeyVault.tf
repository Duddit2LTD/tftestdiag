


module "key_vault" {
  source                        = "Azure/avm-res-keyvault-vault/azurerm"
  name                          = module.naming.key_vault.name_unique
  location                      = azurerm_resource_group.management.location
  enable_telemetry              = var.enable_telemetry
  resource_group_name           = azurerm_resource_group.management.name
  tenant_id                     = data.azurerm_client_config.current.tenant_id
  public_network_access_enabled = true
  keys = {
    cmk_for_storage_account = {
      key_opts = [
        "decrypt",
        "encrypt",
        "sign",
        "unwrapKey",
        "verify",
        "wrapKey"
      ]
      key_type = "RSA"
      name     = "cmk-for-storage-account"
      key_size = 2048
    }
  }
  role_assignments = {
    deployment_user_kv_admin = {
      role_definition_id_or_name = "Key Vault Administrator"
      principal_id               = data.azurerm_client_config.current.object_id
    }
  }
  wait_for_rbac_before_key_operations = {
    create = "60s"
  }
  network_acls = {
    bypass   = "AzureServices"
    ip_rules = ["${data.http.ip.response_body}/32"]
  }
}