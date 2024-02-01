# InvoicingApi::PaginatedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum number of items in the page (actual returned length can be less). |  |
| **offset** | **Integer** | The number of returned items skipped. |  |
| **total** | **Integer** | The total number of records available for retrieval. |  |

## Example

```ruby
require 'pnap_invoicing_api'

instance = InvoicingApi::PaginatedResponse.new(
  limit: 5,
  offset: 25,
  total: 400
)
```

