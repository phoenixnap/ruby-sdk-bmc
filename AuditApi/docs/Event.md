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
  timestamp: 2020-03-19T16:39:00.123Z,
  user_info: null
)
```

