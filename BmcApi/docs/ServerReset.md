# BmcApi::ServerReset

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **install_default_ssh_keys** | **Boolean** | Whether or not to install SSH keys marked as default in addition to any SSH keys specified in this request. | [optional][default to true] |
| **ssh_keys** | **Array&lt;String&gt;** | A list of SSH keys that will be installed on the server. | [optional] |
| **ssh_key_ids** | **Array&lt;String&gt;** | A list of SSH key IDs that will be installed on the server in addition to any SSH keys specified in this request. | [optional] |
| **os_configuration** | [**OsConfigurationMap**](OsConfigurationMap.md) |  | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::ServerReset.new(
  install_default_ssh_keys: false,
  ssh_keys: [&quot;ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDF9LdAFElNCi7JoWh6KUcchrJ2Gac1aqGRPpdZNowObpRtmiRCecAMb7bUgNAaNfcmwiQi7tos9TlnFgprIcfMWb8MSs3ABYHmBgqEEt3RWYf0fAc9CsIpJdMCUG28TPGTlRXCEUVNKgLMdcseAlJoGp1CgbHWIN65fB3he3kAZcfpPn5mapV0tsl2p+ZyuAGRYdn5dJv2RZDHUZBkOeUobwsij+weHCKAFmKQKtCP7ybgVHaQjAPrj8MGnk1jBbjDt5ws+Be+9JNjQJee9zCKbAOsIo3i+GcUIkrw5jxPU/RTGlWBcemPaKHdciSzGcjWboapzIy49qypQhZe1U75 user@my_ip&quot;],
  ssh_key_ids: [&quot;5fa942e71c16abcfbead275f&quot;,&quot;5fa94303cc6dc49346404fca&quot;,&quot;5fa943127bda760ad80c237e&quot;],
  os_configuration: null
)
```

