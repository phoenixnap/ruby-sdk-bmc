# BillingAPI::ProductsGet200ResponseInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pnap_billing_api'

BillingAPI::ProductsGet200ResponseInner.openapi_one_of
# =>
# [
#   :'Product',
#   :'ServerProduct'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'pnap_billing_api'

BillingAPI::ProductsGet200ResponseInner.openapi_discriminator_name
# => :'product_category'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'pnap_billing_api'

BillingAPI::ProductsGet200ResponseInner.openapi_discriminator_mapping
# =>
# {
#   :'BANDWIDTH' => :'Product',
#   :'OPERATING_SYSTEM' => :'Product',
#   :'PUBLIC_IP' => :'Product',
#   :'SERVER' => :'ServerProduct',
#   :'STORAGE' => :'Product'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pnap_billing_api'

BillingAPI::ProductsGet200ResponseInner.build(data)
# => #<Product:0x00007fdd4aab02a0>

BillingAPI::ProductsGet200ResponseInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Product`
- `ServerProduct`
- `nil` (if no type matches)

