# NetworkStorageApi::VolumeCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Volume friendly name. |  |
| **description** | **String** | Volume description. | [optional] |
| **path_suffix** | **String** | Last part of volume&#39;s path. | [optional] |
| **capacity_in_gb** | **Integer** | Capacity of Volume in GB. Currently only whole numbers and multiples of 1000GB are supported. |  |
| **permissions** | [**PermissionsCreate**](PermissionsCreate.md) |  | [optional] |
| **tags** | [**Array&lt;TagAssignmentRequest&gt;**](TagAssignmentRequest.md) | Tags to set to the resource. To create a new tag or list all the existing tags that you can use, refer to [Tags API](https://developers.phoenixnap.com/docs/tags/1/overview). | [optional] |

## Example

```ruby
require 'pnap_network_storage_api'

instance = NetworkStorageApi::VolumeCreate.new(
  name: My volume name,
  description: My volume description,
  path_suffix: /shared-docs,
  capacity_in_gb: 2000,
  permissions: null,
  tags: [{&quot;name&quot;:&quot;stage&quot;,&quot;value&quot;:&quot;beta&quot;},{&quot;name&quot;:&quot;group&quot;,&quot;value&quot;:&quot;discounted&quot;}]
)
```

