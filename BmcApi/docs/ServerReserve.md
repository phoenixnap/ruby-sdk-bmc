# BmcApi::ServerReserve

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pricing_model** | **String** | Server pricing model. Currently this field should be set to &#x60;ONE_MONTH_RESERVATION&#x60;, &#x60;TWELVE_MONTHS_RESERVATION&#x60;, &#x60;TWENTY_FOUR_MONTHS_RESERVATION&#x60; or &#x60;THIRTY_SIX_MONTHS_RESERVATION&#x60;. |  |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::ServerReserve.new(
  pricing_model: ONE_MONTH_RESERVATION
)
```

