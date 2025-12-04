# BillingApi::ReservationDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Reservation identifier. | [optional] |
| **quantity** | [**Quantity**](Quantity.md) |  | [optional] |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::ReservationDetails.new(
  id: 83604275-bdba-490a-b87a-978e8dffdb14,
  quantity: null
)
```

