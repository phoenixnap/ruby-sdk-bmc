# BillingApi::BandwidthDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ingress_gb** | **Float** | The amount of GB consumed in ingress (IN). |  |
| **egress_gb** | **Float** | The amount of GB consumed in egress (OUT). |  |
| **package_quantity** | **Float** | Package size per month. | [optional] |
| **package_unit** | **String** | Package size unit. | [optional] |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::BandwidthDetails.new(
  ingress_gb: 1.33,
  egress_gb: 1.33,
  package_quantity: 15,
  package_unit: null
)
```

