# NetworkApi::BgpIPv4Prefix

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ipv4_allocation_id** | **String** | IPv4 allocation ID. |  |
| **cidr** | **String** | The IP block in CIDR format. |  |
| **status** | **String** | The BGP IPv4 Prefix status. Can have one of the following values: &#x60;PENDING&#x60;, &#x60;BUSY&#x60;, &#x60;READY&#x60;, &#x60;ERROR&#x60; and &#x60;DELETING&#x60;. |  |
| **is_bring_your_own_ip** | **Boolean** | Identifies IP as a &#x60;bring your own&#x60; IP block. |  |
| **in_use** | **Boolean** | The Boolean value of the BGP IPv4 Prefix is in use. |  |

## Example

```ruby
require 'pnap_network_api'

instance = NetworkApi::BgpIPv4Prefix.new(
  ipv4_allocation_id: 6047127fed34ecc3ba8402d2,
  cidr: 10.111.14.40/29,
  status: READY,
  is_bring_your_own_ip: false,
  in_use: false
)
```

