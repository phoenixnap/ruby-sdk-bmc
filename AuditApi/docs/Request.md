# AuditApi::Request

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **headers** | [**Headers**](Headers.md) |  |  |
| **uri** | **String** | The request URI. |  |
| **verb** | **String** | The HTTP request verb. |  |

## Example

```ruby
require 'pnap_audit_api'

instance = AuditApi::Request.new(
  headers: null,
  uri: /v1/servers/jghf757HGhjghg,
  verb: PATCH
)
```

