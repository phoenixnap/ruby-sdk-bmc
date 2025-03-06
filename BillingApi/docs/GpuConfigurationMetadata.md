# BillingApi::GpuConfigurationMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Float** | GPU card count. | [optional] |
| **name** | **String** | GPU name. | [optional] |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::GpuConfigurationMetadata.new(
  count: 2,
  name: Intel MAX 11000
)
```

