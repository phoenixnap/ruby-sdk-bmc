# BillingAPI::BillingConfigurationsApi

All URIs are relative to *https://api.phoenixnap.com/billing/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**account_billing_configuration_me_get**](BillingConfigurationsApi.md#account_billing_configuration_me_get) | **GET** /account-billing-configurations/me | Retrieves billing configuration associated with the authenticated account. |


## account_billing_configuration_me_get

> <ConfigurationDetails> account_billing_configuration_me_get

Retrieves billing configuration associated with the authenticated account.

Retrieves billing configuration associated with the authenticated account.

### Examples

```ruby
require 'time'
require 'pnap_billing_api'
# setup authorization
BillingAPI.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BillingAPI::BillingConfigurationsApi.new

begin
  # Retrieves billing configuration associated with the authenticated account.
  result = api_instance.account_billing_configuration_me_get
  p result
rescue BillingAPI::ApiError => e
  puts "Error when calling BillingConfigurationsApi->account_billing_configuration_me_get: #{e}"
end
```

#### Using the account_billing_configuration_me_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConfigurationDetails>, Integer, Hash)> account_billing_configuration_me_get_with_http_info

```ruby
begin
  # Retrieves billing configuration associated with the authenticated account.
  data, status_code, headers = api_instance.account_billing_configuration_me_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConfigurationDetails>
rescue BillingAPI::ApiError => e
  puts "Error when calling BillingConfigurationsApi->account_billing_configuration_me_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ConfigurationDetails**](ConfigurationDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

