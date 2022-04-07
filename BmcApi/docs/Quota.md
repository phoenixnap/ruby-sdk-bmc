# BmcApi::Quota

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Quota. |  |
| **name** | **String** | The name of the Quota. |  |
| **description** | **String** | The Quota description. |  |
| **status** | **String** | The status of the quota resource usage. |  |
| **limit** | **Integer** | The limit set for the quota. |  |
| **unit** | **String** | An enum field describing what the limit is measured in. |  |
| **used** | **Integer** | The quota used expressed as a number. |  |
| **quota_edit_limit_request_details** | [**Array&lt;QuotaEditLimitRequestDetails&gt;**](QuotaEditLimitRequestDetails.md) |  | [readonly] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::Quota.new(
  id: bmc.servers.max_count,
  name: Servers,
  description: Maximum number of BMC servers,
  status: OVER_LIMIT,
  limit: 2,
  unit: null,
  used: 2,
  quota_edit_limit_request_details: null
)
```

