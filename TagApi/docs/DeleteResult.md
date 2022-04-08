# TagApi::DeleteResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | **String** | Tag deletion result message. |  |
| **tag_id** | **String** | The unique identifier of the tag. |  |

## Example

```ruby
require 'pnap_tag_api'

instance = TagApi::DeleteResult.new(
  result: Tag [tag-name] has been deleted.,
  tag_id: 60ffafcdffb8b074c7968dad
)
```

