# InvoicingApi::Invoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique resource identifier of the Invoice. |  |
| **number** | **String** | A user-friendly reference number assigned to the invoice. |  |
| **currency** | **String** | The currency of the invoice. Currently, this field should be set to &#x60;EUR&#x60; or &#x60;USD&#x60;. |  |
| **amount** | **Float** | The invoice amount. |  |
| **outstanding_amount** | **Float** | The invoice outstanding amount. |  |
| **status** | **String** | The status of the invoice. Currently, this field should be set to &#x60;PAID&#x60;, &#x60;OVERDUE&#x60;, &#x60;PROCESSING_PAYMENT&#x60;, or &#x60;UNPAID&#x60;. |  |
| **sent_on** | **Time** | Date and time when the invoice was sent. |  |
| **due_date** | **Time** | Date and time when the invoice payment is due. |  |

## Example

```ruby
require 'pnap_invoicing_api'

instance = InvoicingApi::Invoice.new(
  id: 5fa54d1e91867c03a0a7b4a4,
  number: 34440-2488782,
  currency: EUR,
  amount: 100.99,
  outstanding_amount: 100.99,
  status: UNPAID,
  sent_on: 2021-03-13T20:24:32.491Z,
  due_date: 2021-04-13T20:24:32.491Z
)
```

