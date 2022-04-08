# BmcApi::DeleteSshKeyResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | **String** | Resource has been deleted. |  |
| **ssh_key_id** | **String** | The unique identifier of the deleted resource. |  |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::DeleteSshKeyResult.new(
  result: Resource has been deleted.,
  ssh_key_id: 5fa54d1e91867c03a0a7b4a4
)
```

