# BillingApi::PackageQuantity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min** | **Float** | Minimum package quantity. |  |
| **max** | **Float** | Maximum package quantity. |  |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::PackageQuantity.new(
  min: 0,
  max: 100
)
```

