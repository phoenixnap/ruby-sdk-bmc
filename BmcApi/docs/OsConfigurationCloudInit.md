# BmcApi::OsConfigurationCloudInit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_data** | **String** | User data for cloud init configuration in base64 encoding. NoCloud format is supported. | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::OsConfigurationCloudInit.new(
  user_data: null
)
```

