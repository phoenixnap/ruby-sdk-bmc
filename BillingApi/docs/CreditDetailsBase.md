# BillingApi::CreditDetailsBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applied_amount** | **Float** | Amount applied. |  |
| **type** | [**CreditTypeEnum**](CreditTypeEnum.md) |  |  |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::CreditDetailsBase.new(
  applied_amount: 50,
  type: null
)
```

