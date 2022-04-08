# BmcApi::PrivateNetworkConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gateway_address** | **String** | The address of the gateway assigned / to assign to the server. It&#39;ll be null and won&#39;t be displayed as part of response body if server is a member of both public and private networks. When used as part of request body, it has to match one of the IP addresses used in the existing assigned private networks for the relevant location. Also, this field can be submitted only when provisioning a server without being a member of any public network. | [optional] |
| **configuration_type** | **String** | Determines the approach for configuring private network(s) for the server being provisioned. Currently this field should be set to &#x60;USE_OR_CREATE_DEFAULT&#x60; or &#x60;USER_DEFINED&#x60;. | [optional][default to &#39;USE_OR_CREATE_DEFAULT&#39;] |
| **private_networks** | [**Array&lt;ServerPrivateNetwork&gt;**](ServerPrivateNetwork.md) | The list of private networks this server is member of. When this field is part of request body, it&#39;ll be used to specify the private networks to assign to this server upon provisioning. Used alongside the &#x60;USER_DEFINED&#x60; configurationType. | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::PrivateNetworkConfiguration.new(
  gateway_address: 10.0.0.10,
  configuration_type: USER_DEFINED,
  private_networks: [{&quot;id&quot;:&quot;60f81608e2f4665962b214db&quot;,&quot;ips&quot;:[&quot;10.0.0.11 - 10.0.0.15&quot;],&quot;dhcp&quot;:false},{&quot;id&quot;:&quot;60f93142c5c1d6082d31382a&quot;,&quot;ips&quot;:[&quot;10.0.0.16&quot;,&quot;10.0.0.17&quot;],&quot;dhcp&quot;:false}]
)
```

