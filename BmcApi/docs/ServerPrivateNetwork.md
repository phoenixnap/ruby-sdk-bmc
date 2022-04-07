# BmcApi::ServerPrivateNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The network identifier. |  |
| **ips** | **Array&lt;String&gt;** | IPs to configure/configured on the server. Should be null or empty list if DHCP is true. | [optional] |
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

