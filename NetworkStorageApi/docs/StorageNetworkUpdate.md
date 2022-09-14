# NetworkStorageApi::StorageNetworkUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Storage network friendly name. | [optional] |
| **description** | **String** | Storage network description. | [optional] |

## Example

```ruby
require 'pnap_network_storage_api'

instance = NetworkStorageApi::StorageNetworkUpdate.new(
  name: My storage network,
  description: My storage network description
)
```

