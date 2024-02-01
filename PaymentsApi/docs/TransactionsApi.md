# PaymentsApi::TransactionsApi

All URIs are relative to *https://api.phoenixnap.com/payments/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**transaction_id_get**](TransactionsApi.md#transaction_id_get) | **GET** /transactions/{transactionId} | Get Transaction. |
| [**transactions_get**](TransactionsApi.md#transactions_get) | **GET** /transactions | Get Transactions. |


## transaction_id_get

> <Transaction> transaction_id_get(transaction_id)

Get Transaction.

Get transaction details.

### Examples

```ruby
require 'time'
require 'pnap_payments_api'
# setup authorization
PaymentsApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PaymentsApi::TransactionsApi.new
transaction_id = '0a1b2c3d4f5g6h7i8j9k' # String | The transaction identifier.

begin
  # Get Transaction.
  result = api_instance.transaction_id_get(transaction_id)
  p result
rescue PaymentsApi::ApiError => e
  puts "Error when calling TransactionsApi->transaction_id_get: #{e}"
end
```

#### Using the transaction_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Transaction>, Integer, Hash)> transaction_id_get_with_http_info(transaction_id)

```ruby
begin
  # Get Transaction.
  data, status_code, headers = api_instance.transaction_id_get_with_http_info(transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Transaction>
rescue PaymentsApi::ApiError => e
  puts "Error when calling TransactionsApi->transaction_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | The transaction identifier. |  |

### Return type

[**Transaction**](Transaction.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transactions_get

> <PaginatedTransactions> transactions_get(opts)

Get Transactions.

A paginated list of client's transactions.

### Examples

```ruby
require 'time'
require 'pnap_payments_api'
# setup authorization
PaymentsApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = PaymentsApi::TransactionsApi.new
opts = {
  limit: 25, # Integer | The limit of the number of results returned. The number of records returned may be smaller than the limit.
  offset: 5, # Integer | The number of items to skip in the results.
  sort_direction: 'ASC', # String | Sort Given Field depending on the desired direction. Default sorting is descending.
  sort_field: 'date', # String | If a sortField is requested, pagination will be done after sorting. Default sorting is by date.
  from: Time.parse('2021-04-27T16:24:57.123Z'), # Time | From the date and time (inclusive) to filter transactions by.
  to: Time.parse('2021-04-29T16:24:57.123Z') # Time | To the date and time (inclusive) to filter transactions by.
}

begin
  # Get Transactions.
  result = api_instance.transactions_get(opts)
  p result
rescue PaymentsApi::ApiError => e
  puts "Error when calling TransactionsApi->transactions_get: #{e}"
end
```

#### Using the transactions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedTransactions>, Integer, Hash)> transactions_get_with_http_info(opts)

```ruby
begin
  # Get Transactions.
  data, status_code, headers = api_instance.transactions_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedTransactions>
rescue PaymentsApi::ApiError => e
  puts "Error when calling TransactionsApi->transactions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The limit of the number of results returned. The number of records returned may be smaller than the limit. | [optional][default to 100] |
| **offset** | **Integer** | The number of items to skip in the results. | [optional][default to 0] |
| **sort_direction** | **String** | Sort Given Field depending on the desired direction. Default sorting is descending. | [optional][default to &#39;DESC&#39;] |
| **sort_field** | **String** | If a sortField is requested, pagination will be done after sorting. Default sorting is by date. | [optional][default to &#39;date&#39;] |
| **from** | **Time** | From the date and time (inclusive) to filter transactions by. | [optional] |
| **to** | **Time** | To the date and time (inclusive) to filter transactions by. | [optional] |

### Return type

[**PaginatedTransactions**](PaginatedTransactions.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

