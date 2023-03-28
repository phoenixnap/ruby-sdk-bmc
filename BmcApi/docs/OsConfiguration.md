# BmcApi::OsConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **windows** | [**OsConfigurationWindows**](OsConfigurationWindows.md) |  | [optional] |
| **root_password** | **String** | Password set for user root on an ESXi server which will only be returned in response to provisioning a server. | [optional][readonly] |
| **management_ui_url** | **String** | The URL of the management UI which will only be returned in response to provisioning a server. | [optional][readonly] |
| **management_access_allowed_ips** | **Array&lt;String&gt;** | List of IPs allowed to access the Management UI. Supported in single IP, CIDR and range format. When undefined, Management UI is disabled. This will only be returned in response to provisioning a server. | [optional] |
| **install_os_to_ram** | **Boolean** | If true, OS will be installed to and booted from the server&#39;s RAM. On restart RAM OS will be lost and the server will not be reachable unless a custom bootable OS has been deployed. Follow the &lt;a href&#x3D;&#39;https://phoenixnap.com/kb/bmc-custom-os&#39; target&#x3D;&#39;_blank&#39;&gt;instructions&lt;/a&gt; on how to install custom OS on BMC. Only supported for ubuntu/focal and ubuntu/jammy. | [optional][default to false] |
| **cloud_init** | [**OsConfigurationCloudInit**](OsConfigurationCloudInit.md) |  | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::OsConfiguration.new(
  windows: null,
  root_password: MyP@ssw0rd_01,
  management_ui_url: https://172.217.22.14,
  management_access_allowed_ips: [&quot;172.217.22.14&quot;,&quot;10.111.14.40/29&quot;,&quot;10.111.14.66 - 10.111.14.71&quot;],
  install_os_to_ram: null,
  cloud_init: null
)
```

