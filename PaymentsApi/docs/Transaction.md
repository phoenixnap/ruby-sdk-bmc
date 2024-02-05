# PaymentsApi::Transaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Transaction ID. |  |
| **status** | **String** | The Transaction status. Status may be: SUCCESS, PROCESSING, FAILED |  |
| **details** | **String** | Details about the transaction. Contains failure reason in case of failed transactions. | [optional] |
| **amount** | **Float** | The transaction amount. |  |
| **currency** | **String** | The transaction currency. |  |
| **date** | **Time** | Date and time when transaction was created. |  |
| **metadata** | [**TransactionMetadata**](TransactionMetadata.md) |  |  |
| **card_payment_method_details** | [**CardPaymentMethodDetails**](CardPaymentMethodDetails.md) |  |  |

## Example

```ruby
require 'pnap_payments_api'

instance = PaymentsApi::Transaction.new(
  id: 60ffafcdffb8b074c7968faf,
  status: FAILED,
  details: Transaction failed due to credit card expiration.,
  amount: 10.99,
  currency: USD,
  date: 2023-04-27T16:24:57.123Z,
  metadata: null,
  card_payment_method_details: null
)
```

