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
  ca_certificate: -----BEGIN CERTIFICATE-----
MIIFczCCA1sCFG28dphawQO8dwgDVut8bZ3bn2p8MA0GCSqGSIb3DQEBCwUAMHYx
CzAJBgNVBAYTAm10MQ0wCwYDVQQIDAR0ZXN0MQ0wCwYDVQQHDAR0ZXN0MQ0wCwYD
CWpsBgDTtUizX7S9UoPnQsB4fOeeafEuNFNSGjhWzzsBnSRLlMDiyxYZKXSKU54K
zlIoNcx18w&#x3D;&#x3D;
-----END CERTIFICATE-----
,
  certificate: -----BEGIN CERTIFICATE-----
MIIFczCCA1sCFG28dphawQO8dwgDVut8bZ3bn2p8MA0GCSqGSIb3DQEBCwUAMHYx
CzAJBgNVBAYTAm10MQ0wCwYDVQQIDAR0ZXN0MQ0wCwYDVQQHDAR0ZXN0MQ0wCwYD
CWpsBgDTtUizX7S9UoPnQsB4fOeeafEuNFNSGjhWzzsBnSRLlMDiyxYZKXSKU54K
zlIoNcx18w&#x3D;&#x3D;
-----END CERTIFICATE-----
,
  certificate_key: -----BEGIN PRIVATE KEY-----
MIIFczCCA1sCFG28dphawQO8dwgDVut8bZ3bn2p8MA0GCSqGSIb3DQEBCwUAMHYx
CzAJBgNVBAYTAm10MQ0wCwYDVQQIDAR0ZXN0MQ0wCwYDVQQHDAR0ZXN0MQ0wCwYD
CWpsBgDTtUizX7S9UoPnQsB4fOeeafEuNFNSGjhWzzsBnSRLlMDiyxYZKXSKU54K
zlIoNcx18w&#x3D;&#x3D;
-----END PRIVATE KEY-----

)
```

