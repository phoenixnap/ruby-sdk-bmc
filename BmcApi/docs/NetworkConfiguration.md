# BmcApi::NetworkConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_network_configuration** | [**PrivateNetworkConfiguration**](PrivateNetworkConfiguration.md) |  | [optional] |
| **ip_blocks_configuration** | [**IpBlocksConfiguration**](IpBlocksConfiguration.md) |  | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::NetworkConfiguration.new(
  private_network_configuration: null,
  ip_blocks_configuration: null
)
```

