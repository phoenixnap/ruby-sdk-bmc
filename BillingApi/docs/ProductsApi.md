# BillingApi::ProductsApi

All URIs are relative to *https://api.phoenixnap.com/billing/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**products_get**](ProductsApi.md#products_get) | **GET** /products | List all Products. |


## products_get

> <Array<ProductsGet200ResponseInner>> products_get(opts)

List all Products.

Retrieves all Products.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingApi::ProductsApi.new
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
rescue BillingApi::ApiError => e
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
rescue BillingApi::ApiError => e
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

