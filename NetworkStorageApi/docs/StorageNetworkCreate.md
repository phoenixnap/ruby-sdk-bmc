# NetworkStorageApi::StorageNetworkCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Storage network friendly name. |  |
| **description** | **String** | Storage network description. | [optional] |
| **location** | **String** | Location of storage network. Currently this field should be set to &#x60;PHX&#x60;. |  |
| **volumes** | [**Array&lt;VolumeCreate&gt;**](VolumeCreate.md) | Volume to be created alongside storage. Currently only 1 volume is supported. |  |

## Example

```ruby
require 'pnap_network_storage_api'

instance = NetworkStorageApi::StorageNetworkCreate.new(
  name: My storage network,
  description: My storage network description,
  location: PHX,
  volumes: null
)
```

