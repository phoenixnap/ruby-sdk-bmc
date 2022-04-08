# BmcApi::RelinquishIpBlock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_ip_blocks** | **Boolean** | Determines whether the IP blocks assigned to the server should be deleted or not. | [optional][default to false] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::RelinquishIpBlock.new(
  delete_ip_blocks: true
)
```

