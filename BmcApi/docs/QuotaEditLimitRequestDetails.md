# BmcApi::QuotaEditLimitRequestDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The new limit that is requested. Minimum allowed limit values: - 0 (Server, IPs) - 1000 (Network Storage) |  |
| **reason** | **String** | The reason for changing the limit. |  |
| **requested_on** | **Time** | The point in time the request was submitted. |  |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::QuotaEditLimitRequestDetails.new(
  limit: 10,
  reason: I need more servers for my cluster.,
  requested_on: 2021-09-01T10:10:10Z
)
```

