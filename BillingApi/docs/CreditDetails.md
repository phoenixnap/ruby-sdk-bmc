# BillingApi::CreditDetails

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pnap_billing_api'

BillingApi::CreditDetails.openapi_one_of
# =>
# [
#   :'PromoCreditDetails',
#   :'SystemCreditDetails'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pnap_billing_api'

BillingApi::CreditDetails.build(data)
# => #<PromoCreditDetails:0x00007fdd4aab02a0>

BillingApi::CreditDetails.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PromoCreditDetails`
- `SystemCreditDetails`
- `nil` (if no type matches)

