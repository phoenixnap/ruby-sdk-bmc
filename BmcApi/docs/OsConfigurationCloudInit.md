# BmcApi::OsConfigurationCloudInit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_data** | **String** | (Write-only) User data for the &lt;a href&#x3D;&#39;https://cloudinit.readthedocs.io/en/latest/&#39; target&#x3D;&#39;_blank&#39;&gt;cloud-init&lt;/a&gt; configuration in base64 encoding. NoCloud format is supported. Follow the &lt;a href&#x3D;&#39;https://phoenixnap.com/kb/bmc-cloud-init&#39; target&#x3D;&#39;_blank&#39;&gt;instructions&lt;/a&gt; on how to provision a server using cloud-init. Only ubuntu/bionic, ubuntu/focal, ubuntu/jammy, debian/bullseye, debian/bookworm, centos/centos7, centos/centos8, almalinux/almalinux8, almalinux/almalinux9, rockylinux/rockylinux8, rockylinux/rockylinux9 and virtuozzo/virtuozzo7 are supported. User data will not be stored and cannot be retrieved once you deploy the server. Copy and save it for future reference. | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::OsConfigurationCloudInit.new(
  user_data: [B@5ae15
)
```

