# NetworkApi::NetworkMembership

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_id** | **String** | The resource identifier. |  |
| **resource_type** | **String** | The resource&#39;s type. |  |
| **ips** | **Array&lt;String&gt;** | List of IPs associated to the resource. |  |

## Example

```ruby
require 'pnap_network_api'

instance = NetworkApi::NetworkMembership.new(
  resource_id: 603f3e995c18d515cda9c4f8,
  resource_type: server,
  ips: [&quot;10.111.14.104&quot;,&quot;10.111.14.105&quot;,&quot;10.111.14.106&quot;]
)
```

