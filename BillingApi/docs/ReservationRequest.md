# BillingApi::ReservationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | **String** | The sku code of product pricing plan. |  |
| **quantity** | [**Quantity**](Quantity.md) |  | [optional] |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::ReservationRequest.new(
  sku: XXX-XXX-XXX,
  quantity: null
)
```

