# BillingAPI::ProductAvailability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_code** | **String** | Product code. |  |
| **product_category** | **String** | Product category. |  |
| **location_availability_details** | [**Array&lt;LocationAvailabilityDetail&gt;**](LocationAvailabilityDetail.md) |  |  |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingAPI::ProductAvailability.new(
  product_code: d1.c1.small,
  product_category: SERVER,
  location_availability_details: null
)
```

