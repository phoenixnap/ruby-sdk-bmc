# BillingApi::PublicSubnetDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Public Subnet identifier as returned by the BMC API. | [optional] |
| **cidr** | **String** | Classless Inter-Domain Routing |  |
| **size** | **String** | CIDR size |  |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::PublicSubnetDetails.new(
  id: 83604275-bdba-490a-b87a-978e8dffdb14,
  cidr: 192.168.0.15/24,
  size: /24
)
```

