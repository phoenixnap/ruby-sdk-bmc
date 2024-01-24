# NetworkStorageApi::TagAssignment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique id of the tag. |  |
| **name** | **String** | The name of the tag. |  |
| **value** | **String** | The value of the tag assigned to the resource. | [optional] |
| **is_billing_tag** | **Boolean** | Whether or not to show the tag as part of billing and invoices |  |
| **created_by** | **String** | Who the tag was created by. | [optional] |

## Example

```ruby
require 'pnap_network_storage_api'

instance = NetworkStorageApi::TagAssignment.new(
  id: 60ffafcdffb8b074c7968dad,
  name: Environment,
  value: PROD,
  is_billing_tag: true,
  created_by: null
)
```

