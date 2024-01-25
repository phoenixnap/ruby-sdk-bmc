# BillingAPI::ApplicableDiscounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **discounted_price** | **Float** | The price of the product after applying a discount. | [optional] |
| **discount_details** | [**Array&lt;DiscountDetails&gt;**](DiscountDetails.md) |  | [optional] |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingAPI::ApplicableDiscounts.new(
  discounted_price: 107.5,
  discount_details: null
)
```

