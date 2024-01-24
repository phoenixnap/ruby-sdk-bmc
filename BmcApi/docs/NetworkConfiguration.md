# BmcApi::NetworkConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gateway_address** | **String** | The address of the gateway assigned / to assign to the server.&lt;br&gt; When used as part of request body, IP address has to be part of a private/public network or an IP block assigned to this server.&lt;br&gt; Gateway address also has to be assigned on an already deployed resource unless the address matches the BMC gateway address in a public network/IP block or the &#x60;force&#x60; query parameter is true. | [optional] |
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

