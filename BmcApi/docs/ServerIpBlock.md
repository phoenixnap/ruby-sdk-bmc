# BmcApi::ServerIpBlock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The IP block&#39;s ID. |  |
| **vlan_id** | **Integer** | The VLAN on which this IP block has been configured within the network switch. | [optional][readonly] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::ServerIpBlock.new(
  id: 60473a6115e34466c9f8f083,
  vlan_id: 10
)
```

