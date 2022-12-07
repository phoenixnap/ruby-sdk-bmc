# NetworkApi::PrivateNetworkCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The friendly name of this private network. This name should be unique. |  |
| **description** | **String** | The description of this private network. | [optional] |
| **location** | **String** | The location of this private network. Supported values are &#x60;PHX&#x60;, &#x60;ASH&#x60;, &#x60;SGP&#x60;, &#x60;NLD&#x60;, &#x60;CHI&#x60;, &#x60;SEA&#x60; and &#x60;AUS&#x60;. |  |
| **location_default** | **Boolean** | Identifies network as the default private network for the specified location. | [optional][default to false] |
| **vlan_id** | **Integer** | The VLAN that will be assigned to this network. | [optional] |
| **cidr** | **String** | IP range associated with this private network in CIDR notation. |  |

## Example

```ruby
require 'pnap_network_api'

instance = NetworkApi::PrivateNetworkCreate.new(
  name: Sample Network,
  description: Further details on the network,
  location: PHX,
  location_default: true,
  vlan_id: 10,
  cidr: 10.0.0.0/24
)
```

