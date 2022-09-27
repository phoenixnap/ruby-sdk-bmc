# NetworkApi::PublicNetworkModify

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A friendly name given to the network. This name should be unique. | [optional] |
| **description** | **String** | The description of this public network | [optional] |

## Example

```ruby
require 'pnap_network_api'

instance = NetworkApi::PublicNetworkModify.new(
  name: Sample Network,
  description: Further details on the network.
)
```

