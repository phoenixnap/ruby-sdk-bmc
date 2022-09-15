# NetworkStorageApi::Volume

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Volume ID. | [optional] |
| **name** | **String** | Volume friendly name. | [optional] |
| **description** | **String** | Volume description. | [optional] |
| **path** | **String** | Volume&#39;s full path. It is in form of &#x60;/{volumeId}/pathSuffix&#x60;&#39;. | [optional] |
| **path_suffix** | **String** | Last part of volume&#39;s path. | [optional] |
| **capacity_in_gb** | **Integer** | Maximum capacity in GB. | [optional] |
| **protocol** | **String** | File system protocol. Currently this field should be set to &#x60;NFS&#x60;. | [optional] |
| **status** | [**Status**](Status.md) |  | [optional] |
| **created_on** | **Time** |  | [optional] |
| **permissions** | [**Permissions**](Permissions.md) |  | [optional] |

## Example

```ruby
require 'pnap_network_storage_api'

instance = NetworkStorageApi::Volume.new(
  id: 50dc434c-9bba-427b-bcd6-0bdba45c4dd2,
  name: My volume name,
  description: My volume description,
  path: /qjul77ahf5fplr2ba484/shared-docs,
  path_suffix: /shared-docs,
  capacity_in_gb: 2000,
  protocol: NFS,
  status: null,
  created_on: 2021-03-13T20:24:32.491Z,
  permissions: null
)
```
