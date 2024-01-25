# BillingAPI::ProductsApi

All URIs are relative to *https://api.phoenixnap.com/billing/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**product_availability_get**](ProductsApi.md#product_availability_get) | **GET** /product-availability | List all Product availabilities. |
| [**products_get**](ProductsApi.md#products_get) | **GET** /products | List all Products. |


## product_availability_get

> <Array<ProductAvailability>> product_availability_get(opts)

List all Product availabilities.

Retrieves the list of product availability details.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingAPI::ProductsApi.new
opts = {
  product_category: ['SERVER'], # Array<String> | Product category. Currently only SERVER category is supported.
  product_code: ['inner_example'], # Array<String> | 
  show_only_min_quantity_available: true, # Boolean | Show only locations where product with requested quantity is available or all locations where product is offered.
  location: [BillingAPI::LocationEnum::PHX], # Array<LocationEnum> | 
  solution: ['SERVER_RANCHER'], # Array<String> | 
  min_quantity: 2 # Float | Minimal quantity of product needed. Minimum, maximum and default values might differ for different products. For servers, they are 1, 10 and 1 respectively.
}

begin
  # List all Product availabilities.
  result = api_instance.product_availability_get(opts)
  p result
rescue BillingAPI::ApiError => e
  puts "Error when calling ProductsApi->product_availability_get: #{e}"
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
rescue BillingAPI::ApiError => e
  puts "Error when calling ProductsApi->product_availability_get_with_http_info: #{e}"
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


## products_get

> <Array<ProductsGet200ResponseInner>> products_get(opts)

List all Products.

Retrieves all Products.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingAPI::ProductsApi.new
opts = {
  product_code: 's1.c1.small', # String | 
  product_category: 'SERVER', # String | 
  sku_code: 'xxx-xxx-xxx', # String | 
  location: 'PHX' # String | 
}

begin
  # List all Products.
  result = api_instance.products_get(opts)
  p result
rescue BillingAPI::ApiError => e
  puts "Error when calling ProductsApi->products_get: #{e}"
end
```

#### Using the products_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ProductsGet200ResponseInner>>, Integer, Hash)> products_get_with_http_info(opts)

```ruby
begin
  # List all Products.
  data, status_code, headers = api_instance.products_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ProductsGet200ResponseInner>>
rescue BillingAPI::ApiError => e
  puts "Error when calling ProductsApi->products_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_code** | **String** |  | [optional] |
| **product_category** | **String** |  | [optional] |
| **sku_code** | **String** |  | [optional] |
| **location** | **String** |  | [optional] |

### Return type

[**Array&lt;ProductsGet200ResponseInner&gt;**](ProductsGet200ResponseInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

