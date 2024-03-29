# BillingApi::ReservationsApi

All URIs are relative to *https://api.phoenixnap.com/billing/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**reservations_get**](ReservationsApi.md#reservations_get) | **GET** /reservations | List all Reservations. |
| [**reservations_post**](ReservationsApi.md#reservations_post) | **POST** /reservations | Create a reservation. |
| [**reservations_reservation_id_actions_auto_renew_disable_post**](ReservationsApi.md#reservations_reservation_id_actions_auto_renew_disable_post) | **POST** /reservations/{id}/actions/auto-renew/disable | Disable auto-renewal for reservation by id. |
| [**reservations_reservation_id_actions_auto_renew_enable_post**](ReservationsApi.md#reservations_reservation_id_actions_auto_renew_enable_post) | **POST** /reservations/{id}/actions/auto-renew/enable | Enable auto-renewal for unexpired reservation by reservation id. |
| [**reservations_reservation_id_actions_convert_post**](ReservationsApi.md#reservations_reservation_id_actions_convert_post) | **POST** /reservations/{id}/actions/convert | Convert reservation pricing model by reservation ID. |
| [**reservations_reservation_id_get**](ReservationsApi.md#reservations_reservation_id_get) | **GET** /reservations/{id} | Get a reservation. |


## reservations_get

> <Array<Reservation>> reservations_get(opts)

List all Reservations.

Retrieves all reservations associated with the authenticated account. All date & times are in UTC.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingApi::ReservationsApi.new
opts = {
  product_category: BillingApi::ReservationProductCategoryEnum::SERVER # ReservationProductCategoryEnum | The product category
}

begin
  # List all Reservations.
  result = api_instance.reservations_get(opts)
  p result
rescue BillingApi::ApiError => e
  puts "Error when calling ReservationsApi->reservations_get: #{e}"
end
```

#### Using the reservations_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Reservation>>, Integer, Hash)> reservations_get_with_http_info(opts)

```ruby
begin
  # List all Reservations.
  data, status_code, headers = api_instance.reservations_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Reservation>>
rescue BillingApi::ApiError => e
  puts "Error when calling ReservationsApi->reservations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_category** | [**ReservationProductCategoryEnum**](.md) | The product category | [optional] |

### Return type

[**Array&lt;Reservation&gt;**](Reservation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reservations_post

> <Reservation> reservations_post(opts)

Create a reservation.

Creates new package reservation for authenticated account.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingApi::ReservationsApi.new
opts = {
  reservation_request: BillingApi::ReservationRequest.new({sku: 'XXX-XXX-XXX'}) # ReservationRequest | 
}

begin
  # Create a reservation.
  result = api_instance.reservations_post(opts)
  p result
rescue BillingApi::ApiError => e
  puts "Error when calling ReservationsApi->reservations_post: #{e}"
end
```

#### Using the reservations_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Reservation>, Integer, Hash)> reservations_post_with_http_info(opts)

```ruby
begin
  # Create a reservation.
  data, status_code, headers = api_instance.reservations_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Reservation>
rescue BillingApi::ApiError => e
  puts "Error when calling ReservationsApi->reservations_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reservation_request** | [**ReservationRequest**](ReservationRequest.md) |  | [optional] |

### Return type

[**Reservation**](Reservation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reservations_reservation_id_actions_auto_renew_disable_post

> <Reservation> reservations_reservation_id_actions_auto_renew_disable_post(id, opts)

Disable auto-renewal for reservation by id.

Disable auto-renewal for reservation by reservation id.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingApi::ReservationsApi.new
id = 'd90bbea9-5725-47ce-879e-d3905bafac2a' # String | Resource id.
opts = {
  reservation_auto_renew_disable_request: BillingApi::ReservationAutoRenewDisableRequest.new # ReservationAutoRenewDisableRequest | 
}

begin
  # Disable auto-renewal for reservation by id.
  result = api_instance.reservations_reservation_id_actions_auto_renew_disable_post(id, opts)
  p result
rescue BillingApi::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_actions_auto_renew_disable_post: #{e}"
end
```

#### Using the reservations_reservation_id_actions_auto_renew_disable_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Reservation>, Integer, Hash)> reservations_reservation_id_actions_auto_renew_disable_post_with_http_info(id, opts)

```ruby
begin
  # Disable auto-renewal for reservation by id.
  data, status_code, headers = api_instance.reservations_reservation_id_actions_auto_renew_disable_post_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Reservation>
rescue BillingApi::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_actions_auto_renew_disable_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource id. |  |
| **reservation_auto_renew_disable_request** | [**ReservationAutoRenewDisableRequest**](ReservationAutoRenewDisableRequest.md) |  | [optional] |

### Return type

[**Reservation**](Reservation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reservations_reservation_id_actions_auto_renew_enable_post

> <Reservation> reservations_reservation_id_actions_auto_renew_enable_post(id)

Enable auto-renewal for unexpired reservation by reservation id.

Enable auto-renewal for unexpired reservation by reservation id.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingApi::ReservationsApi.new
id = 'd90bbea9-5725-47ce-879e-d3905bafac2a' # String | Resource id.

begin
  # Enable auto-renewal for unexpired reservation by reservation id.
  result = api_instance.reservations_reservation_id_actions_auto_renew_enable_post(id)
  p result
rescue BillingApi::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_actions_auto_renew_enable_post: #{e}"
end
```

#### Using the reservations_reservation_id_actions_auto_renew_enable_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Reservation>, Integer, Hash)> reservations_reservation_id_actions_auto_renew_enable_post_with_http_info(id)

```ruby
begin
  # Enable auto-renewal for unexpired reservation by reservation id.
  data, status_code, headers = api_instance.reservations_reservation_id_actions_auto_renew_enable_post_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Reservation>
rescue BillingApi::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_actions_auto_renew_enable_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource id. |  |

### Return type

[**Reservation**](Reservation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reservations_reservation_id_actions_convert_post

> <Reservation> reservations_reservation_id_actions_convert_post(id, opts)

Convert reservation pricing model by reservation ID.

Convert reservation pricing model by reservation id.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingApi::ReservationsApi.new
id = 'd90bbea9-5725-47ce-879e-d3905bafac2a' # String | Resource id.
opts = {
  reservation_request: BillingApi::ReservationRequest.new({sku: 'XXX-XXX-XXX'}) # ReservationRequest | 
}

begin
  # Convert reservation pricing model by reservation ID.
  result = api_instance.reservations_reservation_id_actions_convert_post(id, opts)
  p result
rescue BillingApi::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_actions_convert_post: #{e}"
end
```

#### Using the reservations_reservation_id_actions_convert_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Reservation>, Integer, Hash)> reservations_reservation_id_actions_convert_post_with_http_info(id, opts)

```ruby
begin
  # Convert reservation pricing model by reservation ID.
  data, status_code, headers = api_instance.reservations_reservation_id_actions_convert_post_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Reservation>
rescue BillingApi::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_actions_convert_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource id. |  |
| **reservation_request** | [**ReservationRequest**](ReservationRequest.md) |  | [optional] |

### Return type

[**Reservation**](Reservation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reservations_reservation_id_get

> <Reservation> reservations_reservation_id_get(id)

Get a reservation.

Retrieves the reservations with the specified identifier. All date & times are in UTC.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingApi::ReservationsApi.new
id = 'd90bbea9-5725-47ce-879e-d3905bafac2a' # String | Resource id.

begin
  # Get a reservation.
  result = api_instance.reservations_reservation_id_get(id)
  p result
rescue BillingApi::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_get: #{e}"
end
```

#### Using the reservations_reservation_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Reservation>, Integer, Hash)> reservations_reservation_id_get_with_http_info(id)

```ruby
begin
  # Get a reservation.
  data, status_code, headers = api_instance.reservations_reservation_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Reservation>
rescue BillingApi::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource id. |  |

### Return type

[**Reservation**](Reservation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

