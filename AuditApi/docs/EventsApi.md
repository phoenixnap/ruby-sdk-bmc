# AuditApi::EventsApi

All URIs are relative to *https://api.phoenixnap.com/audit/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**events_get**](EventsApi.md#events_get) | **GET** /events | List event logs. |


## events_get

> <Array<Event>> events_get(opts)

List event logs.

Retrieves the event logs for given time period. All date & times are in UTC.

### Examples

```ruby
require 'time'
require 'pnap_audit_api'
# setup authorization
AuditApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AuditApi::EventsApi.new
opts = {
  from: Time.parse('2021-04-27T16:24:57.123Z'), # Time | From the date and time (inclusive) to filter event log records by.
  to: Time.parse('2021-04-29T16:24:57.123Z'), # Time | To the date and time (inclusive) to filter event log records by.
  limit: 10, # Integer | Limit the number of records returned.
  order: 'ASC', # String | Ordering of the event's time. SortBy can be introduced later on.
  username: 'johnd@phoenixnap.com', # String | The username that did the actions.
  verb: 'POST', # String | The HTTP verb corresponding to the action.
  uri: '/ams/v1/clients/12345' # String | The request uri.
}

begin
  # List event logs.
  result = api_instance.events_get(opts)
  p result
rescue AuditApi::ApiError => e
  puts "Error when calling EventsApi->events_get: #{e}"
end
```

#### Using the events_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Event>>, Integer, Hash)> events_get_with_http_info(opts)

```ruby
begin
  # List event logs.
  data, status_code, headers = api_instance.events_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Event>>
rescue AuditApi::ApiError => e
  puts "Error when calling EventsApi->events_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Time** | From the date and time (inclusive) to filter event log records by. | [optional] |
| **to** | **Time** | To the date and time (inclusive) to filter event log records by. | [optional] |
| **limit** | **Integer** | Limit the number of records returned. | [optional] |
| **order** | **String** | Ordering of the event&#39;s time. SortBy can be introduced later on. | [optional][default to &#39;ASC&#39;] |
| **username** | **String** | The username that did the actions. | [optional] |
| **verb** | **String** | The HTTP verb corresponding to the action. | [optional] |
| **uri** | **String** | The request uri. | [optional] |

### Return type

[**Array&lt;Event&gt;**](Event.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

