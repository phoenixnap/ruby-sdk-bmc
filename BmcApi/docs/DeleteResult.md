# BmcApi::DeleteResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | **String** | Server has been deleted. |  |
| **server_id** | **String** | The unique identifier of the server. |  |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::DeleteResult.new(
  result: Server has been deleted.,
  server_id: x78sdkjds879sd7cx8
)
```

