# BillingApi::LocationAvailabilityDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | [**LocationEnum**](LocationEnum.md) |  |  |
| **min_quantity_requested** | **Float** | Requested quantity. |  |
| **min_quantity_available** | **Boolean** | Is product available in specific location for requested quantity |  |
| **available_quantity** | **Float** | Total available quantity of product in specific location. Max value is 10. |  |
| **solutions** | **Array&lt;String&gt;** | Solutions supported in specific location for a product. |  |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::LocationAvailabilityDetail.new(
  location: null,
  min_quantity_requested: 2,
  min_quantity_available: true,
  available_quantity: 5,
  solutions: null
)
```

