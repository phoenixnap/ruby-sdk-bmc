# AuditApi::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the event. | [optional] |
| **timestamp** | **Time** | The UTC time the event initiated. |  |
| **user_info** | [**UserInfo**](UserInfo.md) |  |  |

## Example

```ruby
require 'pnap_audit_api'

instance = AuditApi::Event.new(
  name: API.CreateServer,
  timestamp: null,
  user_info: null
)
```

