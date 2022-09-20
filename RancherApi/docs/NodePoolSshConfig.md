# RancherApi::NodePoolSshConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **install_default_keys** | **Boolean** | Define whether public keys marked as default should be installed on this node. These are public keys that were already recorded on this system. Use &lt;a href&#x3D;&#39;https://developers.phoenixnap.com/docs/bmc/1/routes/ssh-keys/get&#39; target&#x3D;&#39;_blank&#39;&gt;GET /ssh-keys&lt;/a&gt; to retrieve a list of possible values. | [optional][default to true] |
| **keys** | **Array&lt;String&gt;** | List of public SSH keys. | [optional] |
| **key_ids** | **Array&lt;String&gt;** | List of public SSH key identifiers. These are public keys that were already recorded on this system. Use &lt;a href&#x3D;&#39;https://developers.phoenixnap.com/docs/bmc/1/routes/ssh-keys/get&#39; target&#x3D;&#39;_blank&#39;&gt;GET /ssh-keys&lt;/a&gt; to retrieve a list of possible values. | [optional] |

## Example

```ruby
require 'pnap_rancher_api'

instance = RancherApi::NodePoolSshConfig.new(
  install_default_keys: true,
  keys: [ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDF9LdAFElNCi7JoWh6KUcchrJ2Gac1aqGRPpdZNowObpRtmiRCecAMb7bUgNAaNfcmwiQi7tos9TlnFgprIcfMWb8MSs3ABYHmBgqEEt3RWYf0fAc9CsIpJdMCUG28TPGTlRXCEUVNKgLMdcseAlJoGp1CgbHWIN65fB3he3kAZcfpPn5mapV0tsl2p+ZyuAGRYdn5dJv2RZDHUZBkOeUobwsij+weHCKAFmKQKtCP7ybgVHaQjAPrj8MGnk1jBbjDt5ws+Be+9JNjQJee9zCKbAOsIo3i+GcUIkrw5jxPU/RTGlWBcemPaKHdciSzGcjWboapzIy49qypQhZe1U75 user],
  key_ids: [&quot;5fa54d1e91867c03a0a7b4a4&quot;]
)
```

