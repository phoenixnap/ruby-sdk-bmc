# BmcApi::SshKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the SSH Key. |  |
| **default** | **Boolean** | Keys marked as default are always included on server creation and reset unless toggled off in creation/reset request. |  |
| **name** | **String** | Friendly SSH key name to represent an SSH key. |  |
| **key** | **String** | SSH Key value. |  |
| **fingerprint** | **String** | SSH key auto-generated SHA-256 fingerprint. |  |
| **created_on** | **Time** | Date and time of creation. |  |
| **last_updated_on** | **Time** | Date and time of last update. |  |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::SshKey.new(
  id: 5fa54d1e91867c03a0a7b4a4,
  default: true,
  name: sshkey-name-01,
  key: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDF9LdAFElNCi7JoWh6KUcchrJ2Gac1aqGRPpdZNowObpRtmiRCecAMb7bUgNAaNfcmwiQi7tos9TlnFgprIcfMWb8MSs3ABYHmBgqEEt3RWYf0fAc9CsIpJdMCUG28TPGTlRXCEUVNKgLMdcseAlJoGp1CgbHWIN65fB3he3kAZcfpPn5mapV0tsl2p+ZyuAGRYdn5dJv2RZDHUZBkOeUobwsij+weHCKAFmKQKtCP7ybgVHaQjAPrj8MGnk1jBbjDt5ws+Be+9JNjQJee9zCKbAOsIo3i+GcUIkrw5jxPU/RTGlWBcemPaKHdciSzGcjWboapzIy49qypQhZe1U75 user@my_ip,
  fingerprint: iL4k5YTrOnzvlxFMN+WU4BPI/QqrMcvvhU0xlfeMwZI,
  created_on: 2020-03-19T16:39Z,
  last_updated_on: 2020-03-19T16:39Z
)
```

