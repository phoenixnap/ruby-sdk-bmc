# BillingApi::PromoCreditDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applied_amount** | **Float** | Amount applied. |  |
| **type** | [**CreditTypeEnum**](CreditTypeEnum.md) |  |  |
| **coupon_id** | **String** | Coupon id which is the source of the promo credit. |  |
| **coupon_code** | **String** | Coupon code which is the source of the promo credit. |  |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::PromoCreditDetails.new(
  applied_amount: 50,
  type: null,
  coupon_id: 574845ca-53e6-4e6e-ae16-3ecd2a7d8508,
  coupon_code: promo234
)
```

