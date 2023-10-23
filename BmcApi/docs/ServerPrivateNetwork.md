# BmcApi::ServerPrivateNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The network identifier. |  |
| **ips** | **Array&lt;String&gt;** | IPs to configure/configured on the server.&lt;br&gt; Valid IP formats are single IPv4 addresses or IPv4 ranges. IPs must be within the network&#39;s range. Should be null or empty list if DHCP is true. &lt;br&gt; If field is undefined and DHCP is false, next available IP in network will be automatically allocated.&lt;br&gt; If the network contains a membership of type &#39;storage&#39;, the first twelve IPs are already reserved by BMC and not usable.&lt;br&gt; Setting the &#x60;force&#x60; query parameter to &#x60;true&#x60; allows you to:&lt;ul&gt; &lt;li&gt; Assign no specific IP addresses by designating an empty array of IPs. Note that at least one IP is required for the gateway address to be selected from this network. &lt;li&gt; Assign one or more IP addresses which are already configured on other resource(s) in network.&lt;/ul&gt; | [optional] |
| **dhcp** | **Boolean** | Determines whether DHCP is enabled for this server. Should be false if any IPs are provided. Not supported for Proxmox OS. | [optional][default to false] |
| **status_description** | **String** | (Read-only) The status of the network. | [optional][readonly] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::ServerPrivateNetwork.new(
  id: 603f3b2cfcaf050643b89a4b,
  ips: [&quot;10.1.1.1&quot;,&quot;10.1.1.20 - 10.1.1.25&quot;],
  dhcp: false,
  status_description: assigned
)
```

