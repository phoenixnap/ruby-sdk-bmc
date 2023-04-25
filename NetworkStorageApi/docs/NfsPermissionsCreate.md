# NetworkStorageApi::NfsPermissionsCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **read_write** | **Array&lt;String&gt;** | Read/Write access. | [optional] |
| **read_only** | **Array&lt;String&gt;** | Read only access. | [optional] |
| **root_squash** | **Array&lt;String&gt;** | Root squash permission. | [optional] |
| **no_squash** | **Array&lt;String&gt;** | No squash permission. | [optional] |
| **all_squash** | **Array&lt;String&gt;** | All squash permission. | [optional] |

## Example

```ruby
require 'pnap_network_storage_api'

instance = NetworkStorageApi::NfsPermissionsCreate.new(
  read_write: [&quot;100.80.0.5&quot;,&quot;100.80.0.6&quot;],
  read_only: [&quot;100.80.0.5&quot;],
  root_squash: [&quot;100.80.0.5&quot;,&quot;100.80.0.4/24&quot;],
  no_squash: [&quot;100.80.0.7&quot;,&quot;100.80.0.*&quot;],
  all_squash: [&quot;100.80.0.5&quot;,&quot;100.80.0.6&quot;]
)
```

