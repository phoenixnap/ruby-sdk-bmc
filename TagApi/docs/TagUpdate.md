# TagApi::TagUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The unique name of the tag. Tag names are case-sensitive, and should be composed of a maximum of 100 characters including UTF-8 Unicode letters, numbers, and the following symbols: &#39;-&#39;, &#39;_&#39;. Regex: [A-zÀ-ú0-9_-]{1,100} |  |
| **description** | **String** | The description of the tag. | [optional] |
| **is_billing_tag** | **Boolean** | Whether or not to show the tag as part of billing and invoices. |  |

## Example

```ruby
require 'pnap_tag_api'

instance = TagApi::TagUpdate.new(
  name: Environment,
  description: This tag is used for all resources that need to be assigned to an environment.,
  is_billing_tag: true
)
```

