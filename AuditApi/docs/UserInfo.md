# AuditApi::UserInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The BMC account ID |  |
| **client_id** | **String** | The client ID of the application | [optional] |
| **username** | **String** | The logged in user or owner of the client application |  |

## Example

```ruby
require 'pnap_audit_api'

instance = AuditApi::UserInfo.new(
  account_id: 1234dfgdsf,
  client_id: e9d335b1-3aa4-4760-9bad-2595c0449035,
  username: johnd@phoenixnap.com
)
```

