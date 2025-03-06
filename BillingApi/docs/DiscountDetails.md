# BillingApi::DiscountDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | A unique code associated with the discount. |  |
| **type** | [**DiscountTypeEnum**](DiscountTypeEnum.md) |  |  |
| **value** | **Float** | The value or amount of the discount. The interpretation of this value depends on the &#39;type&#39; of discount.  |  |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::DiscountDetails.new(
  code: new-year-2022-monthly,
  type: null,
  value: 20.5
)
```

