# BillingApi::PackageDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **package_quantity** | [**PackageQuantity**](PackageQuantity.md) |  | [optional] |
| **package_unit** | [**PackageUnitEnum**](PackageUnitEnum.md) |  | [optional] |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::PackageDetails.new(
  package_quantity: null,
  package_unit: null
)
```

