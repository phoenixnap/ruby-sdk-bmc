# PaymentsApi::CardPaymentMethodDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_type** | **String** | The Card Type. Supported Card Types include: VISA, MASTERCARD, DISCOVER, JCB &amp; AMEX. |  |
| **last_four_digits** | **String** | The last four digits of the card number. |  |

## Example

```ruby
require 'pnap_payments_api'

instance = PaymentsApi::CardPaymentMethodDetails.new(
  card_type: VISA,
  last_four_digits: 5666
)
```

