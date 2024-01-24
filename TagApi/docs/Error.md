# TagApi::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | The description detailing the cause of the error code. |  |
| **validation_errors** | **Array&lt;String&gt;** | Validation errors, if any. | [optional] |

## Example

```ruby
require 'pnap_tag_api'

instance = TagApi::Error.new(
  message: null,
  validation_errors: null
)
```

