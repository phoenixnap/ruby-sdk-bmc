# BillingApi::OperatingSystemDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cores** | **Integer** | Number of cores. |  |
| **correlation_id** | **String** | Correlation is used to associate Operating System License charges and the Server on which it was installed. In this scenario, the correlation ID will be equal to the rated usage record ID representing the charge for the Server. |  |

## Example

```ruby
require 'pnap_billing_api'

instance = BillingApi::OperatingSystemDetails.new(
  cores: 2,
  correlation_id: ec4a9d49-1cef-49e9-b85e-b560f88bcd26
)
```

