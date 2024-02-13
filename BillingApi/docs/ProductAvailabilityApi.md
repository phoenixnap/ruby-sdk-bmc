# BillingApi::ProductAvailabilityApi

All URIs are relative to *https://api.phoenixnap.com/billing/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**product_availability_get**](ProductAvailabilityApi.md#product_availability_get) | **GET** /product-availability | List all Product availabilities. |


## product_availability_get

> <Array<ProductAvailability>> product_availability_get(opts)

List all Product availabilities.

Retrieves the list of product availability details.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingApi::ProductAvailabilityApi.new
opts = {
  product_category: ['SERVER'], # Array<String> | Product category. Currently only SERVER category is supported.
  product_code: ['inner_example'], # Array<String> | 
  show_only_min_quantity_available: true, # Boolean | Show only locations where product with requested quantity is available or all locations where product is offered.
  location: [BillingApi::LocationEnum::PHX], # Array<LocationEnum> | 
  solution: ['SERVER_RANCHER'], # Array<String> | 
  min_quantity: 2 # Float | Minimal quantity of product needed. Minimum, maximum and default values might differ for different products. For servers, they are 1, 10 and 1 respectively.
}

begin
  # List all Product availabilities.
  result = api_instance.product_availability_get(opts)
  p result
rescue BillingApi::ApiError => e
  puts "Error when calling ProductAvailabilityApi->product_availability_get: #{e}"
end
```

#### Using the product_availability_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ProductAvailability>>, Integer, Hash)> product_availability_get_with_http_info(opts)

```ruby
begin
  # List all Product availabilities.
  data, status_code, headers = api_instance.product_availability_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ProductAvailability>>
rescue BillingApi::ApiError => e
  puts "Error when calling ProductAvailabilityApi->product_availability_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_category** | [**Array&lt;String&gt;**](String.md) | Product category. Currently only SERVER category is supported. | [optional] |
| **product_code** | [**Array&lt;String&gt;**](String.md) |  | [optional] |
| **show_only_min_quantity_available** | **Boolean** | Show only locations where product with requested quantity is available or all locations where product is offered. | [optional][default to true] |
| **location** | [**Array&lt;LocationEnum&gt;**](LocationEnum.md) |  | [optional] |
| **solution** | [**Array&lt;String&gt;**](String.md) |  | [optional] |
| **min_quantity** | **Float** | Minimal quantity of product needed. Minimum, maximum and default values might differ for different products. For servers, they are 1, 10 and 1 respectively. | [optional] |

### Return type

[**Array&lt;ProductAvailability&gt;**](ProductAvailability.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

