# BmcApi::GpuConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **long_name** | **String** | The long name of the GPU. | [optional] |
| **count** | **Integer** | The number of GPUs. | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::GpuConfiguration.new(
  long_name: Intel Max 1100 GPU,
  count: 2
)
```

