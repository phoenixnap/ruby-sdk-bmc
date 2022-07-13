# NetworkApi::PublicNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The public network identifier. |  |
| **vlan_id** | **Integer** | The VLAN of this public network. |  |
| **memberships** | [**Array&lt;NetworkMembership&gt;**](NetworkMembership.md) | A list of resources that are members of this public network. |  |
| **name** | **String** | The friendly name of this public network. |  |
| **location** | **String** | The location of this public network. Supported values are &#x60;PHX&#x60;, &#x60;ASH&#x60;, &#x60;SGP&#x60;, &#x60;NLD&#x60;, &#x60;CHI&#x60;, &#x60;SEA&#x60; and &#x60;AUS&#x60;. |  |
| **description** | **String** | The description of this public network. | [optional] |
| **status** | **String** | The status of the public network. Can have one of the following values: &#x60;BUSY&#x60; or &#x60;READY&#x60;. |  |
| **created_on** | **Time** | Date and time when this public network was created. |  |
| **ip_blocks** | [**Array&lt;PublicNetworkIpBlock&gt;**](PublicNetworkIpBlock.md) | A list of IP Blocks that are associated with this public network. |  |

## Example

```ruby
require 'pnap_network_api'

instance = NetworkApi::PublicNetwork.new(
  id: 604721852cf65253d151528b,
  vlan_id: 10,
  memberships: null,
  name: Sample Network,
  location: PHX,
  description: Further details on the network.,
  status: READY,
  created_on: 2022-04-05T13:50:30.491Z,
  ip_blocks: null
)
```

