# BillingAPI::RatedUsageApi

All URIs are relative to *https://api.phoenixnap.com/billing/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**rated_usage_get**](RatedUsageApi.md#rated_usage_get) | **GET** /rated-usage | List the rated usage. |
| [**rated_usage_month_to_date_get**](RatedUsageApi.md#rated_usage_month_to_date_get) | **GET** /rated-usage/month-to-date | List the rated usage records for the current calendar month. |


## rated_usage_get

> <Array<RatedUsageGet200ResponseInner>> rated_usage_get(from_year_month, to_year_month, opts)

List the rated usage.

Retrieves all rated usage for given time period. The information is presented as a list of rated usage records. Every record corresponds to a charge. All date & times are in UTC.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingAPI::RatedUsageApi.new
from_year_month = '2020-03' # String | From year month (inclusive) to filter rated usage records by.
to_year_month = '2020-04' # String | To year month (inclusive) to filter rated usage records by.
opts = {
  product_category: BillingAPI::ProductCategoryEnum::SERVER # ProductCategoryEnum | The product category
}

begin
  # List the rated usage.
  result = api_instance.rated_usage_get(from_year_month, to_year_month, opts)
  p result
rescue BillingAPI::ApiError => e
  puts "Error when calling RatedUsageApi->rated_usage_get: #{e}"
end
```

#### Using the rated_usage_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RatedUsageGet200ResponseInner>>, Integer, Hash)> rated_usage_get_with_http_info(from_year_month, to_year_month, opts)

```ruby
begin
  # List the rated usage.
  data, status_code, headers = api_instance.rated_usage_get_with_http_info(from_year_month, to_year_month, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RatedUsageGet200ResponseInner>>
rescue BillingAPI::ApiError => e
  puts "Error when calling RatedUsageApi->rated_usage_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_year_month** | **String** | From year month (inclusive) to filter rated usage records by. |  |
| **to_year_month** | **String** | To year month (inclusive) to filter rated usage records by. |  |
| **product_category** | [**ProductCategoryEnum**](.md) | The product category | [optional] |

### Return type

[**Array&lt;RatedUsageGet200ResponseInner&gt;**](RatedUsageGet200ResponseInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rated_usage_month_to_date_get

> <Array<RatedUsageGet200ResponseInner>> rated_usage_month_to_date_get(opts)

List the rated usage records for the current calendar month.

Retrieves all rated usage for the current calendar month. The information is presented as a list of rated usage records. Every record corresponds to a charge. All date & times are in UTC.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingAPI::RatedUsageApi.new
opts = {
  product_category: BillingAPI::ProductCategoryEnum::SERVER # ProductCategoryEnum | The product category
}

begin
  # List the rated usage records for the current calendar month.
  result = api_instance.rated_usage_month_to_date_get(opts)
  p result
rescue BillingAPI::ApiError => e
  puts "Error when calling RatedUsageApi->rated_usage_month_to_date_get: #{e}"
end
```

#### Using the rated_usage_month_to_date_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RatedUsageGet200ResponseInner>>, Integer, Hash)> rated_usage_month_to_date_get_with_http_info(opts)

```ruby
begin
  # List the rated usage records for the current calendar month.
  data, status_code, headers = api_instance.rated_usage_month_to_date_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RatedUsageGet200ResponseInner>>
rescue BillingAPI::ApiError => e
  puts "Error when calling RatedUsageApi->rated_usage_month_to_date_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_category** | [**ProductCategoryEnum**](.md) | The product category | [optional] |

### Return type

[**Array&lt;RatedUsageGet200ResponseInner&gt;**](RatedUsageGet200ResponseInner.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

