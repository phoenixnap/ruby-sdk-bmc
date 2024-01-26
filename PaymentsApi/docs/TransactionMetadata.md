# PaymentsApi::TransactionMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **String** | The Invoice ID that this transaction pertains to. |  |
| **invoice_number** | **String** | A user-friendly reference number assigned to the invoice that this transaction pertains to. | [optional] |
| **is_auto_charge** | **Boolean** | Whether this transaction was triggered by an auto charge or not. |  |

## Example

```ruby
require 'pnap_payments_api'

instance = PaymentsApi::TransactionMetadata.new(
  invoice_id: 3088561,
  invoice_number: 1234-4321,
  is_auto_charge: true
)
```

