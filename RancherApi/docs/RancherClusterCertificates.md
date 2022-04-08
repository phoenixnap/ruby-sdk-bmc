# RancherApi::RancherClusterCertificates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ca_certificate** | **String** | The SSL CA certificate to be used for rancher admin. | [optional] |
| **certificate** | **String** | The SSL certificate to be used for rancher admin. | [optional] |
| **certificate_key** | **String** | The SSL certificate key to be used for rancher admin. | [optional] |

## Example

```ruby
require 'pnap_rancher_api'

instance = RancherApi::RancherClusterCertificates.new(
  ca_certificate: null,
  certificate: null,
  certificate_key: null
)
```

