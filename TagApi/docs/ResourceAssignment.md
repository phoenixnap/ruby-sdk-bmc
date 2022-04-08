# TagApi::ResourceAssignment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_name** | **String** | The resource name. |  |
| **value** | **String** | The value of the tag assigned to the resource. | [optional] |

## Example

```ruby
require 'pnap_tag_api'

instance = TagApi::ResourceAssignment.new(
  resource_name: /bmc/servers/60ffafcdffb8b074c7968dad,
  value: DEV
)
```

