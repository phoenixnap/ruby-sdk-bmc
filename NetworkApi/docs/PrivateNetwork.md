# NetworkApi::PrivateNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The private network identifier. |  |
| **name** | **String** | The friendly name of this private network. |  |
| **description** | **String** | The description of this private network. | [optional] |
| **vlan_id** | **Integer** | The VLAN of this private network. |  |
| **type** | **String** | The type of the private network. |  |
| **location** | **String** | The location of this private network. |  |
| **location_default** | **Boolean** | Identifies network as the default private network for the specified location. |  |
| **cidr** | **String** | IP range associated with this private network in CIDR notation. | [optional] |
| **servers** | [**Array&lt;PrivateNetworkServer&gt;**](PrivateNetworkServer.md) |  |  |
| **memberships** | [**Array&lt;NetworkMembership&gt;**](NetworkMembership.md) | A list of resources that are members of this private network. |  |
| **status** | **String** | The status of the private network. Can have one of the following values: &#x60;BUSY&#x60;, &#x60;READY&#x60;, &#x60;DELETING&#x60; or &#x60;ERROR&#x60;. |  |
| **created_on** | **Time** | Date and time when this private network was created. |  |

## Example

```ruby
require 'pnap_network_api'

instance = NetworkApi::PrivateNetwork.new(
  id: 604721852cf65253d151528b,
  name: Sample Network,
  description: Further details on the network,
  vlan_id: 10,
  type: PRIVATE,
  location: PHX,
  location_default: true,
  cidr: 10.0.0.0/24,
  servers: null,
  memberships: null,
  status: READY,
  created_on: 2022-04-07T13:30:30.491Z
)
```

