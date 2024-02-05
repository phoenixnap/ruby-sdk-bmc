# BillingApi::RatedUsageGet200ResponseInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'pnap_billing_api'

BillingApi::RatedUsageGet200ResponseInner.openapi_one_of
# =>
# [
#   :'BandwidthRecord',
#   :'OperatingSystemRecord',
#   :'PublicSubnetRecord',
#   :'ServerRecord',
#   :'StorageRecord'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'pnap_billing_api'

BillingApi::RatedUsageGet200ResponseInner.openapi_discriminator_name
# => :'product_category'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'pnap_billing_api'

BillingApi::RatedUsageGet200ResponseInner.openapi_discriminator_mapping
# =>
# {
#   :'bandwidth' => :'BandwidthRecord',
#   :'bmc-server' => :'ServerRecord',
#   :'operating-system' => :'OperatingSystemRecord',
#   :'public-ip' => :'PublicSubnetRecord',
#   :'storage' => :'StorageRecord'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'pnap_billing_api'

BillingApi::RatedUsageGet200ResponseInner.build(data)
# => #<BandwidthRecord:0x00007fdd4aab02a0>

BillingApi::RatedUsageGet200ResponseInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `BandwidthRecord`
- `OperatingSystemRecord`
- `PublicSubnetRecord`
- `ServerRecord`
- `StorageRecord`
- `nil` (if no type matches)

