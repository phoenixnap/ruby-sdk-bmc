# NetworkApi::PrivateNetworksApi

All URIs are relative to *https://api.phoenixnap.com/networks/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**private_networks_get**](PrivateNetworksApi.md#private_networks_get) | **GET** /private-networks | List Private Networks. |
| [**private_networks_network_id_delete**](PrivateNetworksApi.md#private_networks_network_id_delete) | **DELETE** /private-networks/{privateNetworkId} | Delete a Private Network. |
| [**private_networks_network_id_get**](PrivateNetworksApi.md#private_networks_network_id_get) | **GET** /private-networks/{privateNetworkId} | Get a Private Network. |
| [**private_networks_network_id_put**](PrivateNetworksApi.md#private_networks_network_id_put) | **PUT** /private-networks/{privateNetworkId} | Update a Private Network. |
| [**private_networks_post**](PrivateNetworksApi.md#private_networks_post) | **POST** /private-networks | Create a Private Network. |


## private_networks_get

> <Array<PrivateNetwork>> private_networks_get(opts)

List Private Networks.

List all Private Networks owned by account.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::PrivateNetworksApi.new
opts = {
  location: 'PHX' # String | If present will filter the result by the given location of the Private Networks.
}

begin
  # List Private Networks.
  result = api_instance.private_networks_get(opts)
  p result
rescue NetworkApi::ApiError => e
  puts "Error when calling PrivateNetworksApi->private_networks_get: #{e}"
end
```

#### Using the private_networks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PrivateNetwork>>, Integer, Hash)> private_networks_get_with_http_info(opts)

```ruby
begin
  # List Private Networks.
  data, status_code, headers = api_instance.private_networks_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PrivateNetwork>>
rescue NetworkApi::ApiError => e
  puts "Error when calling PrivateNetworksApi->private_networks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | If present will filter the result by the given location of the Private Networks. | [optional] |

### Return type

[**Array&lt;PrivateNetwork&gt;**](PrivateNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_networks_network_id_delete

> private_networks_network_id_delete(private_network_id)

Delete a Private Network.

Delete Private Network.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::PrivateNetworksApi.new
private_network_id = '603f3b2cfcaf050643b89a4b' # String | The private network identifier.

begin
  # Delete a Private Network.
  api_instance.private_networks_network_id_delete(private_network_id)
rescue NetworkApi::ApiError => e
  puts "Error when calling PrivateNetworksApi->private_networks_network_id_delete: #{e}"
end
```

#### Using the private_networks_network_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> private_networks_network_id_delete_with_http_info(private_network_id)

```ruby
begin
  # Delete a Private Network.
  data, status_code, headers = api_instance.private_networks_network_id_delete_with_http_info(private_network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue NetworkApi::ApiError => e
  puts "Error when calling PrivateNetworksApi->private_networks_network_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_network_id** | **String** | The private network identifier. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_networks_network_id_get

> <PrivateNetwork> private_networks_network_id_get(private_network_id)

Get a Private Network.

Retrieve Private Network Details.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::PrivateNetworksApi.new
private_network_id = '603f3b2cfcaf050643b89a4b' # String | The private network identifier.

begin
  # Get a Private Network.
  result = api_instance.private_networks_network_id_get(private_network_id)
  p result
rescue NetworkApi::ApiError => e
  puts "Error when calling PrivateNetworksApi->private_networks_network_id_get: #{e}"
end
```

#### Using the private_networks_network_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateNetwork>, Integer, Hash)> private_networks_network_id_get_with_http_info(private_network_id)

```ruby
begin
  # Get a Private Network.
  data, status_code, headers = api_instance.private_networks_network_id_get_with_http_info(private_network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateNetwork>
rescue NetworkApi::ApiError => e
  puts "Error when calling PrivateNetworksApi->private_networks_network_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_network_id** | **String** | The private network identifier. |  |

### Return type

[**PrivateNetwork**](PrivateNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## private_networks_network_id_put

> <PrivateNetwork> private_networks_network_id_put(private_network_id, private_network_modify)

Update a Private Network.

Update Private Network Details.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::PrivateNetworksApi.new
private_network_id = '603f3b2cfcaf050643b89a4b' # String | The private network identifier.
private_network_modify = NetworkApi::PrivateNetworkModify.new({name: 'Sample network', location_default: true}) # PrivateNetworkModify | 

begin
  # Update a Private Network.
  result = api_instance.private_networks_network_id_put(private_network_id, private_network_modify)
  p result
rescue NetworkApi::ApiError => e
  puts "Error when calling PrivateNetworksApi->private_networks_network_id_put: #{e}"
end
```

#### Using the private_networks_network_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateNetwork>, Integer, Hash)> private_networks_network_id_put_with_http_info(private_network_id, private_network_modify)

```ruby
begin
  # Update a Private Network.
  data, status_code, headers = api_instance.private_networks_network_id_put_with_http_info(private_network_id, private_network_modify)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateNetwork>
rescue NetworkApi::ApiError => e
  puts "Error when calling PrivateNetworksApi->private_networks_network_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_network_id** | **String** | The private network identifier. |  |
| **private_network_modify** | [**PrivateNetworkModify**](PrivateNetworkModify.md) |  |  |

### Return type

[**PrivateNetwork**](PrivateNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## private_networks_post

> <PrivateNetwork> private_networks_post(private_network_create, opts)

Create a Private Network.

Create a Private Network.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::PrivateNetworksApi.new
private_network_create = NetworkApi::PrivateNetworkCreate.new({name: 'Sample Network', location: 'PHX'}) # PrivateNetworkCreate | 
opts = {
  force: true # Boolean | Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups.
}

begin
  # Create a Private Network.
  result = api_instance.private_networks_post(private_network_create, opts)
  p result
rescue NetworkApi::ApiError => e
  puts "Error when calling PrivateNetworksApi->private_networks_post: #{e}"
end
```

#### Using the private_networks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrivateNetwork>, Integer, Hash)> private_networks_post_with_http_info(private_network_create, opts)

```ruby
begin
  # Create a Private Network.
  data, status_code, headers = api_instance.private_networks_post_with_http_info(private_network_create, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrivateNetwork>
rescue NetworkApi::ApiError => e
  puts "Error when calling PrivateNetworksApi->private_networks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_network_create** | [**PrivateNetworkCreate**](PrivateNetworkCreate.md) |  |  |
| **force** | **Boolean** | Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups. | [optional][default to false] |

### Return type

[**PrivateNetwork**](PrivateNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

