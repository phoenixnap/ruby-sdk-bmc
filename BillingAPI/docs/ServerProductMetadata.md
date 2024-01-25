# BillingAPI::ServerProductMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ram_in_gb** | **Float** | RAM in GB. |  |
| **cpu** | **String** | CPU name. |  |
| **cpu_count** | **Float** | Number of CPUs. |  |
| **cores_per_cpu** | **Float** | The number of physical cores present on each CPU. |  |
| **cpu_frequency** | **Float** | CPU frequency in GHz. |  |
| **network** | **String** | Server network. |  |
| **storage** | **String** | Server storage. |  |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingAPI::ServerProductMetadata.new(
  ram_in_gb: 256,
  cpu: Dual Gold 6258R,
  cpu_count: 56,
  cores_per_cpu: 2,
  cpu_frequency: 2.7,
  network: 2x 25Gbps,
  storage: 2x 2TB NVMe
)
```

