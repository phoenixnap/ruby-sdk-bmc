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
| **used_capacity_in_gb** | **Integer** | Used capacity in GB, updated periodically. | [optional] |
| **protocol** | **String** | File system protocol. Currently this field should be set to &#x60;NFS&#x60;. | [optional] |
| **status** | [**Status**](Status.md) |  | [optional] |
| **created_on** | **Time** |  | [optional] |
| **delete_requested_on** | **Time** | Date and time of the initial request for volume deletion. | [optional] |
| **permissions** | [**Permissions**](Permissions.md) |  | [optional] |
| **tags** | [**Array&lt;TagAssignment&gt;**](TagAssignment.md) | The tags assigned if any. | [optional] |

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
  used_capacity_in_gb: 1000,
  protocol: NFS,
  status: null,
  created_on: 2021-03-13T20:24:32.491Z,
  delete_requested_on: 2022-04-07T08:50:20.359Z,
  permissions: null,
  tags: [{&quot;name&quot;:&quot;stage&quot;,&quot;value&quot;:&quot;beta&quot;},{&quot;name&quot;:&quot;group&quot;,&quot;value&quot;:&quot;discounted&quot;}]
)
```

