# BmcApi::ServerPrivateNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The network identifier. |  |
| **ips** | **Array&lt;String&gt;** | IPs to configure/configured on the server.&lt;br&gt; Valid IP formats are single IPv4 addresses or IPv4 ranges. IPs must be within the network&#39;s range. Should be null or empty list if DHCP is true. &lt;br&gt; If field is undefined and DHCP is false, next available IP in network will be automatically allocated.&lt;br&gt; If the network contains a membership of type &#39;storage&#39;, the first twelve IPs are already reserved by BMC and not usable.&lt;br&gt; Setting the &#x60;force&#x60; query parameter to &#x60;true&#x60; allows you to:&lt;ul&gt; &lt;li&gt; Assign no specific IP addresses by designating an empty array of IPs. Note that at least one IP is required for the gateway address to be selected from this network. &lt;li&gt; Assign one or more IP addresses which are already configured on other resource(s) in network. &lt;li&gt; Assign IP addresses which are considered as reserved in network.&lt;/ul&gt; | [optional] |
| **dhcp** | **Boolean** | Determines whether DHCP is enabled for this server.&lt;br&gt; The following restrictions apply when enabling DHCP:&lt;ul&gt; &lt;li&gt; DHCP support is limited to servers configured exclusively with private networks (PRIVATE_ONLY). &lt;li&gt; DHCP value needs to be consistent across all server-configured private networks.  &lt;li&gt; The server does not support manual gateway address configuration. &lt;li&gt; Private IP addresses for network cannot be specified.&lt;/ul&gt; Note: Not supported on Proxmox OS. | [optional][default to false] |
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

