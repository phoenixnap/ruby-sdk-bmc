# BmcApi::OsConfigurationNetrisController

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_os** | **String** | (Read-only) Host OS on which the Netris Controller is installed. | [optional][readonly] |
| **netris_web_console_url** | **String** | (Read-only) The URL for the Netris Controller web console. It will only be returned in response to provisioning a server. | [optional][readonly] |
| **netris_user_password** | **String** | (Read-only) Auto-generated password set for user &#39;netris&#39; in the web console.&lt;br&gt;  The password is not stored and therefore will only be returned in response to provisioning a server. Copy and save it for future reference. | [optional][readonly] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::OsConfigurationNetrisController.new(
  host_os: ubuntu/jammy,
  netris_web_console_url: https://172.217.22.14,
  netris_user_password: cNC1jPFXG2h7f
)
```

