# BmcApi::OsConfigurationMap

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **windows** | [**OsConfigurationWindows**](OsConfigurationWindows.md) |  | [optional] |
| **esxi** | [**OsConfigurationMapEsxi**](OsConfigurationMapEsxi.md) |  | [optional] |
| **proxmox** | [**OsConfigurationMapProxmox**](OsConfigurationMapProxmox.md) |  | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::OsConfigurationMap.new(
  windows: null,
  esxi: null,
  proxmox: null
)
```

