# BillingApi::SystemCreditDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applied_amount** | **Float** | Amount applied. |  |
| **type** | [**CreditTypeEnum**](CreditTypeEnum.md) |  |  |
| **cause** | [**SystemCreditCauseEnum**](SystemCreditCauseEnum.md) |  |  |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::SystemCreditDetails.new(
  applied_amount: 50,
  type: null,
  cause: null
)
```

