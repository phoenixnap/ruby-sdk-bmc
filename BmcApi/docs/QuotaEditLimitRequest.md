# BmcApi::QuotaEditLimitRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The new limit that is requested. Minimum allowed limit values: - 0 (Server, IPs) - 1000 (Network Storage) |  |
| **reason** | **String** | The reason for changing the limit. |  |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::QuotaEditLimitRequest.new(
  limit: 10,
  reason: I need more servers for my cluster.
)
```

