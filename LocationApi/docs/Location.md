# LocationApi::Location

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | [**LocationEnum**](LocationEnum.md) |  |  |
| **location_description** | **String** |  | [optional] |
| **product_categories** | [**Array&lt;ProductCategory&gt;**](ProductCategory.md) |  | [optional] |

## Example

```ruby
require 'pnap_location_api'

instance = LocationApi::Location.new(
  location: null,
  location_description: Phoenix, USA,
  product_categories: null
)
```

