# BmcApi::TagAssignmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the tag. Tag names are case-sensitive, and should be composed of a maximum of 100 characters including UTF-8 Unicode letters, numbers, and the following symbols: &#39;-&#39;, &#39;_&#39;. Regex: [A-zÀ-ú0-9_-]{1,100}. |  |
| **value** | **String** | The value of the tag assigned to the resource. Tag values are case-sensitive, and should be composed of a maximum of 100 characters including UTF-8 Unicode letters, numbers, and the following symbols: &#39;-&#39;, &#39;_&#39;. Regex: [A-zÀ-ú0-9_-]{1,100}. | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::TagAssignmentRequest.new(
  name: Environment,
  value: PROD
)
```

