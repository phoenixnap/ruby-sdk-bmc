# PaymentsApi::PaginatedTransactions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | [**Array&lt;Transaction&gt;**](Transaction.md) |  |  |
| **limit** | **Integer** | Maximum number of items in the page (actual returned length can be less). |  |
| **offset** | **Integer** | The number of returned items skipped. |  |
| **total** | **Integer** | The total number of records available for retrieval. |  |

## Example

```ruby
require 'pnap_payments_api'

instance = PaymentsApi::PaginatedTransactions.new(
  results: null,
  limit: 5,
  offset: 25,
  total: 400
)
```

