# BillingApi::ApplicableDiscountDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | A unique code associated with the discount. |  |
| **type** | [**DiscountTypeEnum**](DiscountTypeEnum.md) |  |  |
| **value** | **Float** | The value or amount of the discount. The interpretation of this value depends on the &#39;type&#39; of discount.  |  |
| **coupon_code** | **String** | Coupon code which is the source of the discount. | [optional] |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::ApplicableDiscountDetails.new(
  code: new-year-2022-monthly,
  type: null,
  value: 20.5,
  coupon_code: promo234
)
```

