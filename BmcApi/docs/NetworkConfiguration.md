# BmcApi::NetworkConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gateway_address** | **String** | The address of the gateway assigned / to assign to the server. When used as part of request body, IP address has to be part of private/public network assigned to this server. | [optional] |
| **private_network_configuration** | [**PrivateNetworkConfiguration**](PrivateNetworkConfiguration.md) |  | [optional] |
| **ip_blocks_configuration** | [**IpBlocksConfiguration**](IpBlocksConfiguration.md) |  | [optional] |
| **public_network_configuration** | [**PublicNetworkConfiguration**](PublicNetworkConfiguration.md) |  | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::NetworkConfiguration.new(
  gateway_address: 182.16.0.145,
  private_network_configuration: null,
  ip_blocks_configuration: null,
  public_network_configuration: null
)
```

