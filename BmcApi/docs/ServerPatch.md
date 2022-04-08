# BmcApi::ServerPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of server. | [optional] |
| **hostname** | **String** | Hostname of server | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::ServerPatch.new(
  description: Server #1 used for computing.,
  hostname: my-server
)
```

