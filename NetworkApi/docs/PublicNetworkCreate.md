# NetworkApi::PublicNetworkCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The friendly name of this public network. This name should be unique. |  |
| **description** | **String** | The description of this public network. | [optional] |
| **location** | **String** | The location of this public network. Supported values are &#x60;PHX&#x60;, &#x60;ASH&#x60;, &#x60;SGP&#x60;, &#x60;NLD&#x60;, &#x60;CHI&#x60;, &#x60;SEA&#x60; and &#x60;AUS&#x60;. |  |
| **vlan_id** | **Integer** | The VLAN that will be assigned to this network. | [optional] |
| **ip_blocks** | [**Array&lt;PublicNetworkIpBlockCreate&gt;**](PublicNetworkIpBlockCreate.md) | A list of IP Blocks that will be associated with this public network. Supported maximum of 10 IPv4 Blocks and 1 IPv6 Block. | [optional] |
| **ra_enabled** | **Boolean** | Boolean indicating whether Router Advertisement is enabled. Only applicable for Network with IPv6 Blocks. | [optional] |

## Example

```ruby
require 'pnap_network_api'

instance = NetworkApi::PublicNetworkCreate.new(
  name: Sample Network,
  description: Further details on the network.,
  location: PHX,
  vlan_id: 10,
  ip_blocks: null,
  ra_enabled: true
)
```

