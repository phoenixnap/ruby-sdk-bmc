# BmcApi::OsConfigurationIPXENativeVlanConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vlan_id** | **Integer** | The VLAN ID of the network to be used as the native VLAN. The value must reference a public network with IP V4 block(s) or a public IP V4 block network to which the server is (or will be) attached. If omitted during provisioning, the native VLAN is matched to the configured/auto-purchased public IP V4 block. If no public IP block is available, a VLAN ID must be provided. The VLAN ID must belong to one of the public networks for any of the specified servers. During post-provisioning, if Native VLAN is omitted, the server will be configured with no native VLAN. If provided, the VLAN ID must be specified and must belong to any of the existing server public networks or IP block networks attached to the server.  | [optional] |
| **static_dhcp_address_v4** | **String** | The static IP V4 address assigned to the server within the native VLAN. This address is set as the DHCP reservation and used for the iPXE boot process.  Value must be an available/unused IP V4 address within the native network usable IP range. If omitted, the first available IP in the native network will be automatically assigned. Therefore, at least one IP must be available within the native network.  | [optional] |
| **status** | **String** | (Read-only) The status of the native VLAN configuration. | [optional][readonly] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::OsConfigurationIPXENativeVlanConfiguration.new(
  vlan_id: 10,
  static_dhcp_address_v4: 185.74.213.56,
  status: null
)
```

