# NetworkApi::BgpIpPrefix

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_allocation_id** | **String** | IP allocation ID. |  |
| **cidr** | **String** | The IP block in CIDR format, dependent on IP version. |  |
| **ip_version** | **String** | The IP block version. |  |
| **status** | **String** | The BGP IP Prefix status. Can have one of the following values: &#x60;PENDING&#x60;, &#x60;BUSY&#x60;, &#x60;READY&#x60;, &#x60;ERROR&#x60; and &#x60;DELETING&#x60;. |  |

## Example

```ruby
require 'pnap_network_api'

instance = NetworkApi::BgpIpPrefix.new(
  ip_allocation_id: 6047127fed34ecc3ba8402d2,
  cidr: 10.111.14.40/29,
  ip_version: V4,
  status: READY
)
```

