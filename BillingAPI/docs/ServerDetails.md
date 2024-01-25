# BillingAPI::ServerDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The server identifier as returned by the BMC API. |  |
| **hostname** | **String** | The server hostname. |  |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingAPI::ServerDetails.new(
  id: 83604275-bdba-490a-b87a-978e8dffdb14,
  hostname: example-server
)
```

