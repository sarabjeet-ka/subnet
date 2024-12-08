variable "subnet_varibles" {
  type=map(object({
   subnet_name=string
subnet_rg=string
  virtual_network_name = string
  virtual_network_resource_group_name=string
subnet_address_prefixes=list(string)
subnet_default_outbound_access_enabled=bool
subnet_private_endpoint_network_policies=string
subnet_private_link_service_network_policies_enabled=bool
subnet_service_endpoints =list(string)
  subnet_service_endpoint_policy_ids=list(string)
  delegation = object({ 
    delegation_name = string 
  service_delegation = object({ 
    service_delegation_name = string 
    service_delegation_actions = list(string) 
    }) 
    })
}))
}