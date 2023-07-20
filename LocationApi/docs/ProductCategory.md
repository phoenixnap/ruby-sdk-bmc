# LocationApi::ProductCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_category** | [**ProductCategoryEnum**](ProductCategoryEnum.md) |  |  |
| **product_category_description** | **String** |  | [optional] |

## Example

```ruby
require 'pnap_location_api'

instance = LocationApi::ProductCategory.new(
  product_category: null,
  product_category_description: Bare metal server
)
```

