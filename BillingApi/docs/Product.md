# BillingApi::Product

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_code** | **String** | The code identifying the product. This code has significant across all locations. |  |
| **product_category** | **String** | The product category. |  |
| **plans** | [**Array&lt;PricingPlan&gt;**](PricingPlan.md) | The pricing plans available for this product. | [optional] |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::Product.new(
  product_code: s1.c1.small,
  product_category: SERVER,
  plans: null
)
```

