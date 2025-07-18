# BmcApi::PublicNetworkConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_networks** | [**Array&lt;ServerPublicNetwork&gt;**](ServerPublicNetwork.md) | The list of public networks this server belongs to. If this field is part of a request body, it will be used for specifying the public networks to assign to this server on provision. Only IPv4 addresses can be specified. | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::PublicNetworkConfiguration.new(
  public_networks: [{&quot;id&quot;:&quot;60473c2509268bc77fd06d29&quot;,&quot;ips&quot;:[&quot;182.16.0.146&quot;,&quot;182.16.0.147&quot;]},{&quot;id&quot;:&quot;60f93142c5c1d6082d31382a&quot;,&quot;ips&quot;:[&quot;183.16.0.1&quot;]}]
)
```

