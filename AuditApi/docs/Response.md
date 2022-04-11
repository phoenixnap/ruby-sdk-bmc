# AuditApi::Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status_code** | **Integer** | The status code returned in the response sent to the API. |  |
| **resource_id** | **String** | The ID of the resource that was created. | [optional] |

## Example

```ruby
require 'pnap_audit_api'

instance = AuditApi::Response.new(
  status_code: 200,
  resource_id: 5edf1c9b4215748ac543d721
)
```

