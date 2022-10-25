# NetworkStorageApi::VolumeUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capacity_in_gb** | **Integer** | Capacity of Volume in GB. Currently only whole numbers and multiples of 1000GB are supported. | [optional] |

## Example

```ruby
require 'pnap_network_storage_api'

instance = NetworkStorageApi::VolumeUpdate.new(
  capacity_in_gb: 2000
)
```

