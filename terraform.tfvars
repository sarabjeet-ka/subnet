subnet_varibles = {
  "subnet_1" = {
       subnet_name="sarab-snet"
subnet_rg="NetworkWatcherRG"
  virtual_network_name = "sarabvnet"
  virtual_network_resource_group_name="NetworkWatcherRG"
subnet_address_prefixes=["10.0.0.0/24"]
subnet_default_outbound_access_enabled=false
subnet_private_endpoint_network_policies=null
subnet_private_link_service_network_policies_enabled=null
subnet_service_endpoints =null
  subnet_service_endpoint_policy_ids=null
  delegation = { 
    delegation_name = "sarab-delegation1" 
  service_delegation = { 
    service_delegation_name = "Microsoft.ContainerInstance/containerGroups" 
  service_delegation_actions = ["Microsoft.Network/virtualNetworks/subnets/action"] 
  } 
  }
  }
}