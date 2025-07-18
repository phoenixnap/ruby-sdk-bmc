# BmcApi::IpBlocksConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **configuration_type** | **String** | (Write-only) Determines the approach for configuring IP blocks for the server being provisioned. If PURCHASE_NEW is selected, the smallest supported range, depending on the operating system, is allocated to the server. | [optional][default to &#39;PURCHASE_NEW&#39;] |
| **ip_blocks** | [**Array&lt;ServerIpBlock&gt;**](ServerIpBlock.md) | Used for specifying the previously purchased IPv4 blocks to assign to this server upon provisioning. Used alongside the USER_DEFINED configurationType. | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::IpBlocksConfiguration.new(
  configuration_type: null,
  ip_blocks: null
)
```

