# BmcApi::ServerPrivateNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The network identifier. |  |
| **ips** | **Array&lt;String&gt;** | IPs to configure/configured on the server. Should be null or empty list if DHCP is true. IPs must be within the network&#39;s range. If no IPs are provided and DHCP is false, next available IP in network will be automatically allocated. If the network contains a membership of type &#39;storage&#39;, the first twelve IPs are already reserved by BMC and not usable. These will return a Bad Request (400) if selected. | [optional] |
| **dhcp** | **Boolean** | Determines whether DHCP is enabled for this server. Should be false if ips is not an empty list. Not supported for proxmox OS. | [optional][default to false] |
| **status_description** | **String** | The status of the network. | [optional][readonly] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::ServerPrivateNetwork.new(
  id: 603f3b2cfcaf050643b89a4b,
  ips: [&quot;10.1.1.1&quot;,&quot;10.1.1.2&quot;],
  dhcp: false,
  status_description: assigned
)
```

