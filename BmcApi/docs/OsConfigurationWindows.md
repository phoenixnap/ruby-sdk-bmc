# BmcApi::OsConfigurationWindows

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rdp_allowed_ips** | **Array&lt;String&gt;** | List of IPs allowed for RDP access to Windows OS. Supported in single IP, CIDR and range format. When undefined, RDP is disabled. To allow RDP access from any IP use 0.0.0.0/0. This will only be returned in response to provisioning a server. | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::OsConfigurationWindows.new(
  rdp_allowed_ips: [&quot;172.217.22.14&quot;,&quot;10.111.14.40/29&quot;,&quot;10.111.14.66 - 10.111.14.71&quot;]
)
```

