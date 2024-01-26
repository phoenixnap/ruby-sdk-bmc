# PaymentsApi::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | The description detailing the cause of the error code. | [readonly] |
| **validation_errors** | **Array&lt;String&gt;** | Validation errors, if any. | [optional][readonly] |

## Example

```ruby
require 'pnap_payments_api'

instance = PaymentsApi::Error.new(
  message: null,
  validation_errors: null
)
```

