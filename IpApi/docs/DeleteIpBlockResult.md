# IpApi::DeleteIpBlockResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | **String** | IP Block has been deleted. |  |
| **ip_block_id** | **String** | The unique identifier of the IP Block. |  |

## Example

```ruby
require 'pnap_ip_api'

instance = IpApi::DeleteIpBlockResult.new(
  result: IP Block has been deleted.,
  ip_block_id: 6047127fed34ecc3ba8402d2
)
```

