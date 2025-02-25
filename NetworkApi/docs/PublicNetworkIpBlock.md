# NetworkApi::PublicNetworkIpBlock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The IP Block identifier. |  |
| **cidr** | **String** | The CIDR notation of the IP block. |  |
| **used_ips_count** | **String** | The number of IPs used in the IP block. |  |

## Example

```ruby
require 'pnap_network_api'

instance = NetworkApi::PublicNetworkIpBlock.new(
  id: 60473a6115e34466c9f8f083,
  cidr: 10.111.14.0/29,
  used_ips_count: 3
)
```

