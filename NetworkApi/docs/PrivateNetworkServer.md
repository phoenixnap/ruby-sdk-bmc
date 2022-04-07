# NetworkApi::PrivateNetworkServer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The server identifier. |  |
| **ips** | **Array&lt;String&gt;** | List of private IPs associated to the server. |  |

## Example

```ruby
require 'pnap_network_api'

instance = NetworkApi::PrivateNetworkServer.new(
  id: 603f3e995c18d515cda9c4f8,
  ips: [&quot;10.0.0.2&quot;,&quot;10.0.0.3&quot;]
)
```

