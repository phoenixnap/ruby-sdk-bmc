# TagApi::ResourceAssignment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_name** | **String** | The resource name which is automatically generated by the tags-api. It is a unique resource identifier made up of the API name (e.g. bmc, ips), the resource type and the resource ID. This is not to be confused with custom names that are defined for particular resources, such as the server name or network name. |  |
| **value** | **String** | The value of the tag assigned to the resource. | [optional] |

## Example

```ruby
require 'pnap_tag_api'

instance = TagApi::ResourceAssignment.new(
  resource_name: /bmc/servers/60ffafcdffb8b074c7968dad,
  value: DEV
)
```

