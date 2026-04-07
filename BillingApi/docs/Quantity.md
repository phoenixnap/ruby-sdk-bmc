# BillingApi::Quantity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity** | **Float** | Quantity size. |  |
| **unit** | [**QuantityUnitEnum**](QuantityUnitEnum.md) |  |  |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::Quantity.new(
  quantity: 30,
  unit: null
)
```

