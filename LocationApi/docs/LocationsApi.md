# LocationApi::LocationsApi

All URIs are relative to *https://api.phoenixnap.com/location-api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_locations**](LocationsApi.md#get_locations) | **GET** /locations | Get All Locations |


## get_locations

> <Array<Location>> get_locations(opts)

Get All Locations

Retrieve the locations info.

### Examples

```ruby
require 'time'
require 'pnap_location_api'

api_instance = LocationApi::LocationsApi.new
opts = {
  location: LocationApi::LocationEnum::PHX, # LocationEnum | Location of interest
  product_category: LocationApi::ProductCategoryEnum::SERVER # ProductCategoryEnum | Product category of interest
}

begin
  # Get All Locations
  result = api_instance.get_locations(opts)
  p result
rescue LocationApi::ApiError => e
  puts "Error when calling LocationsApi->get_locations: #{e}"
end
```

#### Using the get_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Location>>, Integer, Hash)> get_locations_with_http_info(opts)

```ruby
begin
  # Get All Locations
  data, status_code, headers = api_instance.get_locations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Location>>
rescue LocationApi::ApiError => e
  puts "Error when calling LocationsApi->get_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | [**LocationEnum**](.md) | Location of interest | [optional] |
| **product_category** | [**ProductCategoryEnum**](.md) | Product category of interest | [optional] |

### Return type

[**Array&lt;Location&gt;**](Location.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

