# BmcApi::ResetResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | **String** | Message describing the reset result. |  |
| **password** | **String** | Password set for user Admin on Windows server or user root on ESXi server. | [optional] |
| **os_configuration** | [**OsConfigurationMap**](OsConfigurationMap.md) |  | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::ResetResult.new(
  result: Resetting server.,
  password: MyP@ssw0rd_01,
  os_configuration: null
)
```

