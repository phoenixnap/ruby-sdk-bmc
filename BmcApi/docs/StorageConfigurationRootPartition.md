# BmcApi::StorageConfigurationRootPartition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **raid** | **String** | Software RAID configuration. The following RAID options are available: NO_RAID, RAID_0, RAID_1. | [optional][default to &#39;NO_RAID&#39;] |
| **size** | **Integer** | The size of the root partition in GB. -1 to use all available space. | [optional][default to -1] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::StorageConfigurationRootPartition.new(
  raid: NO_RAID,
  size: -1
)
```

