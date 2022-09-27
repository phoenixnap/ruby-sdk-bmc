# NetworkStorageApi::VolumeCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Volume friendly name. |  |
| **description** | **String** | Volume description. | [optional] |
| **path_suffix** | **String** | Last part of volume&#39;s path. | [optional] |
| **capacity_in_gb** | **Integer** | Capacity of Volume in GB. Currently only whole numbers and multiples of 1000GB are supported. |  |

## Example

```ruby
require 'pnap_network_storage_api'

instance = NetworkStorageApi::VolumeCreate.new(
  name: My volume name,
  description: My volume description,
  path_suffix: /shared-docs,
  capacity_in_gb: 2000
)
```

