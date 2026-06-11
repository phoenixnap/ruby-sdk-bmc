# BmcApi::OsConfigurationIPXE

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The URL of the iPXE boot script used to start the server. |  |
| **native_vlan_configuration** | [**OsConfigurationIPXENativeVlanConfiguration**](OsConfigurationIPXENativeVlanConfiguration.md) |  | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::OsConfigurationIPXE.new(
  url: https://example.com/boot.ipxe,
  native_vlan_configuration: null
)
```

