# BmcApi::QuotasApi

All URIs are relative to *https://api.phoenixnap.com/bmc/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**quotas_get**](QuotasApi.md#quotas_get) | **GET** /quotas | List quotas |
| [**quotas_quota_id_actions_request_edit_post**](QuotasApi.md#quotas_quota_id_actions_request_edit_post) | **POST** /quotas/{quotaId}/actions/request-edit | Request quota limit change. |
| [**quotas_quota_id_get**](QuotasApi.md#quotas_quota_id_get) | **GET** /quotas/{quotaId} | Get a quota. |


## quotas_get

> <Array<Quota>> quotas_get

List quotas

Get account quota details.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::QuotasApi.new

begin
  # List quotas
  result = api_instance.quotas_get
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling QuotasApi->quotas_get: #{e}"
end
```

#### Using the quotas_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Quota>>, Integer, Hash)> quotas_get_with_http_info

```ruby
begin
  # List quotas
  data, status_code, headers = api_instance.quotas_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Quota>>
rescue BmcApi::ApiError => e
  puts "Error when calling QuotasApi->quotas_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Quota&gt;**](Quota.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## quotas_quota_id_actions_request_edit_post

> quotas_quota_id_actions_request_edit_post(quota_id, quota_edit_limit_request)

Request quota limit change.

Sends a request to edit the limit of a quota.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::QuotasApi.new
quota_id = 'bmc.servers.max_count' # String | The ID of the Quota.
quota_edit_limit_request = BmcApi::QuotaEditLimitRequest.new({limit: 10, reason: 'I need more servers for my cluster.'}) # QuotaEditLimitRequest | 

begin
  # Request quota limit change.
  api_instance.quotas_quota_id_actions_request_edit_post(quota_id, quota_edit_limit_request)
rescue BmcApi::ApiError => e
  puts "Error when calling QuotasApi->quotas_quota_id_actions_request_edit_post: #{e}"
end
```

#### Using the quotas_quota_id_actions_request_edit_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> quotas_quota_id_actions_request_edit_post_with_http_info(quota_id, quota_edit_limit_request)

```ruby
begin
  # Request quota limit change.
  data, status_code, headers = api_instance.quotas_quota_id_actions_request_edit_post_with_http_info(quota_id, quota_edit_limit_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BmcApi::ApiError => e
  puts "Error when calling QuotasApi->quotas_quota_id_actions_request_edit_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quota_id** | **String** | The ID of the Quota. |  |
| **quota_edit_limit_request** | [**QuotaEditLimitRequest**](QuotaEditLimitRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## quotas_quota_id_get

> <Quota> quotas_quota_id_get(quota_id)

Get a quota.

Get account quota details.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::QuotasApi.new
quota_id = 'bmc.servers.max_count' # String | The ID of the Quota.

begin
  # Get a quota.
  result = api_instance.quotas_quota_id_get(quota_id)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling QuotasApi->quotas_quota_id_get: #{e}"
end
```

#### Using the quotas_quota_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Quota>, Integer, Hash)> quotas_quota_id_get_with_http_info(quota_id)

```ruby
begin
  # Get a quota.
  data, status_code, headers = api_instance.quotas_quota_id_get_with_http_info(quota_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Quota>
rescue BmcApi::ApiError => e
  puts "Error when calling QuotasApi->quotas_quota_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quota_id** | **String** | The ID of the Quota. |  |

### Return type

[**Quota**](Quota.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

