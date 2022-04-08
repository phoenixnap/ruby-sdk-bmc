# AuditApi::ApiAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the event. | [optional] |
| **timestamp** | **Time** | The UTC time the event initiated. |  |
| **user_info** | [**UserInfo**](UserInfo.md) |  |  |
| **response** | [**Response**](Response.md) |  |  |
| **request** | [**Request**](Request.md) |  |  |

## Example

```ruby
require 'pnap_audit_api'

instance = AuditApi::ApiAction.new(
  name: API.CreateServer,
  timestamp: null,
  user_info: null,
  response: null,
  request: null
)
```

