# NetworkStorageApi::VolumeUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Volume friendly name. | [optional] |
| **description** | **String** | Volume description. | [optional] |
| **capacity_in_gb** | **Integer** | Capacity of Volume in GB. Currently only whole numbers and multiples of 1000GB are supported. | [optional] |
| **path_suffix** | **String** | Last part of volume&#39;s path. | [optional] |
| **permissions** | [**PermissionsUpdate**](PermissionsUpdate.md) |  | [optional] |

## Example

```ruby
require 'pnap_network_storage_api'

instance = NetworkStorageApi::VolumeUpdate.new(
  name: New Volume name,
  description: New Volume description,
  capacity_in_gb: 2000,
  path_suffix: /my/volume/path,
  permissions: null
)
```

