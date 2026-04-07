# BmcApi::ReservationTransferDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_server_id** | **String** | ID of target server to transfer reservation to. |  |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::ReservationTransferDetails.new(
  target_server_id: 54a21648dasda4s9843a17
)
```

