# BmcApi::ServerPublicNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The network identifier. |  |
| **ips** | **Array&lt;String&gt;** | IPs to configure/configured on the server. IPs must be within the network&#39;s range.&lt;br&gt; Note that at least one IP is required for the gateway to be selected from this network. |  |
| **status_description** | **String** | The status of the assignment to the network. | [optional][readonly] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::ServerPublicNetwork.new(
  id: 60473c2509268bc77fd06d29,
  ips: [&quot;182.16.0.146&quot;,&quot;182.16.0.147&quot;],
  status_description: assigned
)
```

