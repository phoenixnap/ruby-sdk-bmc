# BmcApi::OsConfigurationNetrisSoftgate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_os** | **String** | (Read-only) Host OS on which the Netris Softgate is installed. | [optional][readonly] |
| **controller_address** | **String** | (Write-only) IP address or hostname through which to reach the Netris Controller. | [optional] |
| **controller_version** | **String** | (Write-only) The version of the Netris Controller to connect to. | [optional] |
| **controller_auth_key** | **String** | (Write-only) The authentication key of the Netris Controller to connect to. Required for the softgate agent to be able to interact with the Netris Controller. | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::OsConfigurationNetrisSoftgate.new(
  host_os: ubuntu/jammy,
  controller_address: 120.153.203.227,
  controller_version: 3.4.0-003,
  controller_auth_key: w0OP8TjZaHO17DTwxtN5VYh5Bh1ZVH2s3WK1JRTw
)
```

