# BillingApi::ReservationTerm

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **length_in_months** | **Integer** | Term&#39;s length, expressed in months. |  |
| **reservation_model** | [**ReservationModelEnum**](ReservationModelEnum.md) |  |  |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::ReservationTerm.new(
  length_in_months: 12,
  reservation_model: null
)
```

