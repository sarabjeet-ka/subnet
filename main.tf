data "azurerm_virtual_network" "example" {
  for_each = { for k, v in var.subnet_varibles : k => v }
  name                = each.value.virtual_network_name
  resource_group_name = each.value.virtual_network_resource_group_name
}


resource "azurerm_subnet" "example" {
    for_each = var.subnet_varibles
  name                 = each.value.subnet_name
  resource_group_name  = each.value.subnet_rg
  virtual_network_name = data.azurerm_virtual_network.example[each.key].name
  address_prefixes     = each.value.subnet_address_prefixes
  default_outbound_access_enabled=each.value.subnet_default_outbound_access_enabled
  private_endpoint_network_policies=each.value.subnet_private_endpoint_network_policies
  private_link_service_network_policies_enabled=each.value.subnet_private_link_service_network_policies_enabled
  service_endpoints=each.value.subnet_service_endpoints 
  service_endpoint_policy_ids=each.value.subnet_service_endpoint_policy_ids

dynamic "delegation" { 
    for_each = each.value.delegation != null ? [each.value.delegation] : [] 
    content { 
        name = delegation.value.delegation_name 
    service_delegation { 
        name = delegation.value.service_delegation.service_delegation_name 
        actions = delegation.value.service_delegation.service_delegation_actions 
        } 
        } 
        }


        
}