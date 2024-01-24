# BmcApi::SshKeyUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default** | **Boolean** | Keys marked as default are always included on server creation and reset unless toggled off in creation/reset request. |  |
| **name** | **String** | SSH key name that can represent the key as an alternative to its ID. |  |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::SshKeyUpdate.new(
  default: true,
  name: sshkey-name-01
)
```

