# BmcApi::ServerNetworkUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ips** | **Array&lt;String&gt;** | List of IPs to be associated to the server.&lt;br&gt; Valid IP formats include single IP addresses or IP ranges (IPv4 or IPv6). IPs must be within the network&#39;s range.&lt;br&gt; Setting the &#x60;force&#x60; query parameter to &#x60;true&#x60; allows you to:&lt;ul&gt; &lt;li&gt; Assign no specific IP addresses by designating an empty array of IPs. &lt;li&gt; Assign one or more IP addresses which are already configured on other resource(s) in network. &lt;li&gt; Assign IP addresses which are considered as reserved in network.&lt;/ul&gt; | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::ServerNetworkUpdate.new(
  ips: [&quot;10.1.1.1&quot;,&quot;10.1.1.20 - 10.1.1.25&quot;,&quot;2001:db8::f&quot;,&quot;2001:db8::b - 2001:db8::d&quot;]
)
```

