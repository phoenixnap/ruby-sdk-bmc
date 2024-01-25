# BillingAPI::ReservationsApi

All URIs are relative to *https://api.phoenixnap.com/billing/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**reservations_get**](ReservationsApi.md#reservations_get) | **GET** /reservations | List all Reservations. |
| [**reservations_post**](ReservationsApi.md#reservations_post) | **POST** /reservations | Create a reservation. |
| [**reservations_reservation_id_actions_auto_renew_disable_post**](ReservationsApi.md#reservations_reservation_id_actions_auto_renew_disable_post) | **POST** /reservations/{reservationId}/actions/auto-renew/disable | Disable auto-renewal for reservation by id. |
| [**reservations_reservation_id_actions_auto_renew_enable_post**](ReservationsApi.md#reservations_reservation_id_actions_auto_renew_enable_post) | **POST** /reservations/{reservationId}/actions/auto-renew/enable | Enable auto-renewal for unexpired reservation by reservation id. |
| [**reservations_reservation_id_actions_convert_post**](ReservationsApi.md#reservations_reservation_id_actions_convert_post) | **POST** /reservations/{reservationId}/actions/convert | Convert reservation pricing model by reservation ID. |
| [**reservations_reservation_id_get**](ReservationsApi.md#reservations_reservation_id_get) | **GET** /reservations/{reservationId} | Get a reservation. |


## reservations_get

> <Array<Reservation>> reservations_get(opts)

List all Reservations.

Retrieves all reservations associated with the authenticated account. All date & times are in UTC.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingAPI::ReservationsApi.new
opts = {
  product_category: BillingAPI::ProductCategoryEnum::SERVER # ProductCategoryEnum | The product category
}

begin
  # List all Reservations.
  result = api_instance.reservations_get(opts)
  p result
rescue BillingAPI::ApiError => e
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
rescue BillingAPI::ApiError => e
  puts "Error when calling ReservationsApi->reservations_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_category** | [**ProductCategoryEnum**](.md) | The product category | [optional] |

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
BillingAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingAPI::ReservationsApi.new
opts = {
  reservation_request: BillingAPI::ReservationRequest.new({sku: 'XXX-XXX-XXX'}) # ReservationRequest | 
}

begin
  # Create a reservation.
  result = api_instance.reservations_post(opts)
  p result
rescue BillingAPI::ApiError => e
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
rescue BillingAPI::ApiError => e
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

> <Reservation> reservations_reservation_id_actions_auto_renew_disable_post(reservation_id, opts)

Disable auto-renewal for reservation by id.

Disable auto-renewal for reservation by reservation id.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingAPI::ReservationsApi.new
reservation_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The reservation's ID.
opts = {
  reservation_auto_renew_disable_request: BillingAPI::ReservationAutoRenewDisableRequest.new # ReservationAutoRenewDisableRequest | 
}

begin
  # Disable auto-renewal for reservation by id.
  result = api_instance.reservations_reservation_id_actions_auto_renew_disable_post(reservation_id, opts)
  p result
rescue BillingAPI::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_actions_auto_renew_disable_post: #{e}"
end
```

#### Using the reservations_reservation_id_actions_auto_renew_disable_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Reservation>, Integer, Hash)> reservations_reservation_id_actions_auto_renew_disable_post_with_http_info(reservation_id, opts)

```ruby
begin
  # Disable auto-renewal for reservation by id.
  data, status_code, headers = api_instance.reservations_reservation_id_actions_auto_renew_disable_post_with_http_info(reservation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Reservation>
rescue BillingAPI::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_actions_auto_renew_disable_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reservation_id** | **String** | The reservation&#39;s ID. |  |
| **reservation_auto_renew_disable_request** | [**ReservationAutoRenewDisableRequest**](ReservationAutoRenewDisableRequest.md) |  | [optional] |

### Return type

[**Reservation**](Reservation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reservations_reservation_id_actions_auto_renew_enable_post

> <Reservation> reservations_reservation_id_actions_auto_renew_enable_post(reservation_id)

Enable auto-renewal for unexpired reservation by reservation id.

Enable auto-renewal for unexpired reservation by reservation id.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingAPI::ReservationsApi.new
reservation_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The reservation's ID.

begin
  # Enable auto-renewal for unexpired reservation by reservation id.
  result = api_instance.reservations_reservation_id_actions_auto_renew_enable_post(reservation_id)
  p result
rescue BillingAPI::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_actions_auto_renew_enable_post: #{e}"
end
```

#### Using the reservations_reservation_id_actions_auto_renew_enable_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Reservation>, Integer, Hash)> reservations_reservation_id_actions_auto_renew_enable_post_with_http_info(reservation_id)

```ruby
begin
  # Enable auto-renewal for unexpired reservation by reservation id.
  data, status_code, headers = api_instance.reservations_reservation_id_actions_auto_renew_enable_post_with_http_info(reservation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Reservation>
rescue BillingAPI::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_actions_auto_renew_enable_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reservation_id** | **String** | The reservation&#39;s ID. |  |

### Return type

[**Reservation**](Reservation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reservations_reservation_id_actions_convert_post

> <Reservation> reservations_reservation_id_actions_convert_post(reservation_id, opts)

Convert reservation pricing model by reservation ID.

Convert reservation pricing model by reservation id.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingAPI::ReservationsApi.new
reservation_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The reservation's ID.
opts = {
  reservation_request: BillingAPI::ReservationRequest.new({sku: 'XXX-XXX-XXX'}) # ReservationRequest | 
}

begin
  # Convert reservation pricing model by reservation ID.
  result = api_instance.reservations_reservation_id_actions_convert_post(reservation_id, opts)
  p result
rescue BillingAPI::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_actions_convert_post: #{e}"
end
```

#### Using the reservations_reservation_id_actions_convert_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Reservation>, Integer, Hash)> reservations_reservation_id_actions_convert_post_with_http_info(reservation_id, opts)

```ruby
begin
  # Convert reservation pricing model by reservation ID.
  data, status_code, headers = api_instance.reservations_reservation_id_actions_convert_post_with_http_info(reservation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Reservation>
rescue BillingAPI::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_actions_convert_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reservation_id** | **String** | The reservation&#39;s ID. |  |
| **reservation_request** | [**ReservationRequest**](ReservationRequest.md) |  | [optional] |

### Return type

[**Reservation**](Reservation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reservations_reservation_id_get

> <Reservation> reservations_reservation_id_get(reservation_id)

Get a reservation.

Retrieves the reservations with the specified identifier. All date & times are in UTC.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingAPI::ReservationsApi.new
reservation_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The reservation's ID.

begin
  # Get a reservation.
  result = api_instance.reservations_reservation_id_get(reservation_id)
  p result
rescue BillingAPI::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_get: #{e}"
end
```

#### Using the reservations_reservation_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Reservation>, Integer, Hash)> reservations_reservation_id_get_with_http_info(reservation_id)

```ruby
begin
  # Get a reservation.
  data, status_code, headers = api_instance.reservations_reservation_id_get_with_http_info(reservation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Reservation>
rescue BillingAPI::ApiError => e
  puts "Error when calling ReservationsApi->reservations_reservation_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reservation_id** | **String** | The reservation&#39;s ID. |  |

### Return type

[**Reservation**](Reservation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

