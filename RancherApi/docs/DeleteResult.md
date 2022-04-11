# RancherApi::DeleteResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | **String** | Solution cluster has been deleted. |  |
| **cluster_id** | **String** | The unique identifier of the solution cluster. | [optional] |

## Example

```ruby
require 'pnap_rancher_api'

instance = RancherApi::DeleteResult.new(
  result: Solution cluster has been deleted.,
  cluster_id: x78sdkjds879sd7cx8
)
```

