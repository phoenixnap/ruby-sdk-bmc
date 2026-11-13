# NetworkApi::ReservedIp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ips** | **Array&lt;String&gt;** | A list containing reserved IP addresses or inclusive IP ranges. |  |
| **assignable_with_force** | **Boolean** | Indicates whether the reserved IP addresses can be assigned to a resource when the assignment request is made with &#x60;force&#x60; query parameter set to &#x60;true&#x60;. |  |

## Example

```ruby
require 'pnap_network_api'

instance = NetworkApi::ReservedIp.new(
  ips: [&quot;10.111.14.0 - 10.111.14.1&quot;,&quot;10.111.14.7&quot;],
  assignable_with_force: true
)
```

