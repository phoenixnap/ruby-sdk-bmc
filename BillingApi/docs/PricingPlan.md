# BillingApi::PricingPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sku** | **String** | The SKU identifying this pricing plan. |  |
| **sku_description** | **String** | Description of this pricing plan. | [optional] |
| **location** | **String** | The code identifying the location. |  |
| **pricing_model** | **String** | The pricing model. |  |
| **price** | **Float** | The price per unit. |  |
| **price_unit** | [**PriceUnitEnum**](PriceUnitEnum.md) |  |  |
| **applicable_discounts** | [**ApplicableDiscounts**](ApplicableDiscounts.md) |  | [optional] |
| **correlated_product_code** | **String** | Product code of the product this product is correlated with | [optional] |
| **package_quantity** | **Float** | Package size per month. | [optional] |
| **package_unit** | [**PackageUnitEnum**](PackageUnitEnum.md) |  | [optional] |
| **package_details** | [**PackageDetails**](PackageDetails.md) |  | [optional] |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::PricingPlan.new(
  sku: XXX-XXX-XXX,
  sku_description: Hourly Rate for s1.c1.small in Phoenix,
  location: null,
  pricing_model: null,
  price: 0.22,
  price_unit: null,
  applicable_discounts: null,
  correlated_product_code: s1.c1.small,
  package_quantity: 50,
  package_unit: null,
  package_details: null
)
```

