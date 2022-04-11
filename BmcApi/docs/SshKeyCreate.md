# BmcApi::SshKeyCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default** | **Boolean** | Keys marked as default are always included on server creation and reset unless toggled off in creation/reset request. |  |
| **name** | **String** | Friendly SSH key name to represent an SSH key. |  |
| **key** | **String** | SSH key actual key value. |  |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::SshKeyCreate.new(
  default: true,
  name: sshkey-name-01,
  key: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDF9LdAFElNCi7JoWh6KUcchrJ2Gac1aqGRPpdZNowObpRtmiRCecAMb7bUgNAaNfcmwiQi7tos9TlnFgprIcfMWb8MSs3ABYHmBgqEEt3RWYf0fAc9CsIpJdMCUG28TPGTlRXCEUVNKgLMdcseAlJoGp1CgbHWIN65fB3he3kAZcfpPn5mapV0tsl2p+ZyuAGRYdn5dJv2RZDHUZBkOeUobwsij+weHCKAFmKQKtCP7ybgVHaQjAPrj8MGnk1jBbjDt5ws+Be+9JNjQJee9zCKbAOsIo3i+GcUIkrw5jxPU/RTGlWBcemPaKHdciSzGcjWboapzIy49qypQhZe1U75 user@my_ip
)
```

