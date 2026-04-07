# BillingApi::StorageDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **network_storage_id** | **String** | Network storage ID. | [optional] |
| **network_storage_name** | **String** | Network storage name. | [optional] |
| **volume_id** | **String** | Volume ID. | [optional] |
| **volume_name** | **String** | Volume name. | [optional] |
| **capacity_in_gb** | **Integer** | Capacity in GB. |  |
| **created_on** | **Time** | Timestamp when the record was created. | [optional] |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::StorageDetails.new(
  network_storage_id: 123asd239-323las2d2-123123a,
  network_storage_name: First network storage.,
  volume_id: 123asd239-323las2d2-123123a,
  volume_name: First volume.,
  capacity_in_gb: 150000,
  created_on: 2020-03-19T16:39Z
)
```

