# BmcApi::ServerPublicNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The network identifier. |  |
| **ips** | **Array&lt;String&gt;** | Configurable/configured IPs on the server.&lt;br&gt; At least 1 IP address is required. Valid IP formats include single IP addresses or IP ranges (IPv4 or IPv6). All IPs must be within the network&#39;s range.&lt;br&gt; Setting the &#x60;computeSlaacIp&#x60; field to &#x60;true&#x60; allows you to provide an empty array of IPs.&lt;br&gt; Additionally, setting the &#x60;force&#x60; query parameter to &#x60;true&#x60; allows you to:&lt;ul&gt; &lt;li&gt; Assign no specific IP addresses by designating an empty array of IPs. Note that at least one IP is required for the gateway address to be selected from this network. &lt;li&gt; Assign one or more IP addresses which are already configured on other resource(s) in network.&lt;/ul&gt; | [optional] |
| **status_description** | **String** | (Read-only) The status of the assignment to the network. | [optional][readonly] |
| **compute_slaac_ip** | **Boolean** | (Write-only) Requests Stateless Address Autoconfiguration (SLAAC). Applicable for Network which contains IPv6 block(s). | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::ServerPublicNetwork.new(
  id: 60473c2509268bc77fd06d29,
  ips: [&quot;182.16.0.146&quot;,&quot;10.1.1.20 - 10.1.1.25&quot;,&quot;2001:db8::f&quot;,&quot;2001:db8::b - 2001:db8::d&quot;],
  status_description: assigned,
  compute_slaac_ip: true
)
```

