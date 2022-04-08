# TagApi::Tag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique id of the tag. |  |
| **name** | **String** | The name of the tag. |  |
| **values** | **Array&lt;String&gt;** | The optional values of the tag. | [optional] |
| **description** | **String** | The description of the tag. | [optional] |
| **is_billing_tag** | **Boolean** | Whether or not to show the tag as part of billing and invoices. |  |
| **resource_assignments** | [**Array&lt;ResourceAssignment&gt;**](ResourceAssignment.md) | The tag&#39;s assigned resources. | [optional] |
| **created_by** | **String** | The tag&#39;s creator. | [optional][default to &#39;USER&#39;] |

## Example

```ruby
require 'pnap_tag_api'

instance = TagApi::Tag.new(
  id: 60ffafcdffb8b074c7968dad,
  name: Environment,
  values: [DEV, PROD],
  description: This tag is used for all resources that need to be assigned to an environment.,
  is_billing_tag: true,
  resource_assignments: null,
  created_by: null
)
```

