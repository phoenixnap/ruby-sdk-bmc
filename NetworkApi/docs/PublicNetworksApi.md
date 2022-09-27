# NetworkApi::PublicNetworksApi

All URIs are relative to *https://api.phoenixnap.com/networks/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**public_networks_get**](PublicNetworksApi.md#public_networks_get) | **GET** /public-networks | List Public Networks. |
| [**public_networks_network_id_delete**](PublicNetworksApi.md#public_networks_network_id_delete) | **DELETE** /public-networks/{publicNetworkId} | Delete a Public Network. |
| [**public_networks_network_id_get**](PublicNetworksApi.md#public_networks_network_id_get) | **GET** /public-networks/{publicNetworkId} | Get a Public Network. |
| [**public_networks_network_id_ip_blocks_ip_block_id_delete**](PublicNetworksApi.md#public_networks_network_id_ip_blocks_ip_block_id_delete) | **DELETE** /public-networks/{publicNetworkId}/ip-blocks/{ipBlockId} | Removes the IP Block from the Public Network. |
| [**public_networks_network_id_ip_blocks_post**](PublicNetworksApi.md#public_networks_network_id_ip_blocks_post) | **POST** /public-networks/{publicNetworkId}/ip-blocks | Adds an IP block to this public network. |
| [**public_networks_network_id_patch**](PublicNetworksApi.md#public_networks_network_id_patch) | **PATCH** /public-networks/{publicNetworkId} | Update Public Network&#39;s Details. |
| [**public_networks_post**](PublicNetworksApi.md#public_networks_post) | **POST** /public-networks | Create a public network. |


## public_networks_get

> <Array<PublicNetwork>> public_networks_get(opts)

List Public Networks.

List all Public Networks owned by account.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::PublicNetworksApi.new
opts = {
  location: 'PHX' # String | If present will filter the result by the given location of the Public Networks.
}

begin
  # List Public Networks.
  result = api_instance.public_networks_get(opts)
  p result
rescue NetworkApi::ApiError => e
  puts "Error when calling PublicNetworksApi->public_networks_get: #{e}"
end
```

#### Using the public_networks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PublicNetwork>>, Integer, Hash)> public_networks_get_with_http_info(opts)

```ruby
begin
  # List Public Networks.
  data, status_code, headers = api_instance.public_networks_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PublicNetwork>>
rescue NetworkApi::ApiError => e
  puts "Error when calling PublicNetworksApi->public_networks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | If present will filter the result by the given location of the Public Networks. | [optional] |

### Return type

[**Array&lt;PublicNetwork&gt;**](PublicNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_networks_network_id_delete

> public_networks_network_id_delete(public_network_id)

Delete a Public Network.

Delete Public Network. The request is accepted only if no resources are members of this network. The IP Block(s) will be freed and can be re-used in the future.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::PublicNetworksApi.new
public_network_id = '603f3b2cfcaf050643b89a4b' # String | The Public Network identifier.

begin
  # Delete a Public Network.
  api_instance.public_networks_network_id_delete(public_network_id)
rescue NetworkApi::ApiError => e
  puts "Error when calling PublicNetworksApi->public_networks_network_id_delete: #{e}"
end
```

#### Using the public_networks_network_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> public_networks_network_id_delete_with_http_info(public_network_id)

```ruby
begin
  # Delete a Public Network.
  data, status_code, headers = api_instance.public_networks_network_id_delete_with_http_info(public_network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue NetworkApi::ApiError => e
  puts "Error when calling PublicNetworksApi->public_networks_network_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_network_id** | **String** | The Public Network identifier. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_networks_network_id_get

> <PublicNetwork> public_networks_network_id_get(public_network_id)

Get a Public Network.

Retrieve Public Network Details.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::PublicNetworksApi.new
public_network_id = '603f3b2cfcaf050643b89a4b' # String | The Public Network identifier.

begin
  # Get a Public Network.
  result = api_instance.public_networks_network_id_get(public_network_id)
  p result
rescue NetworkApi::ApiError => e
  puts "Error when calling PublicNetworksApi->public_networks_network_id_get: #{e}"
end
```

#### Using the public_networks_network_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicNetwork>, Integer, Hash)> public_networks_network_id_get_with_http_info(public_network_id)

```ruby
begin
  # Get a Public Network.
  data, status_code, headers = api_instance.public_networks_network_id_get_with_http_info(public_network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicNetwork>
rescue NetworkApi::ApiError => e
  puts "Error when calling PublicNetworksApi->public_networks_network_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_network_id** | **String** | The Public Network identifier. |  |

### Return type

[**PublicNetwork**](PublicNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_networks_network_id_ip_blocks_ip_block_id_delete

> String public_networks_network_id_ip_blocks_ip_block_id_delete(public_network_id, ip_block_id)

Removes the IP Block from the Public Network.

Removes the IP Block from the Public Network. The result of this is that any traffic addressed to any IP within the block will not be routed to this network anymore. Please ensure that no resource members within this network have any IPs assigned from the IP Block being removed.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::PublicNetworksApi.new
public_network_id = '603f3b2cfcaf050643b89a4b' # String | The Public Network identifier.
ip_block_id = '6047127fed34ecc3ba8402d2' # String | The IP Block identifier.

begin
  # Removes the IP Block from the Public Network.
  result = api_instance.public_networks_network_id_ip_blocks_ip_block_id_delete(public_network_id, ip_block_id)
  p result
rescue NetworkApi::ApiError => e
  puts "Error when calling PublicNetworksApi->public_networks_network_id_ip_blocks_ip_block_id_delete: #{e}"
end
```

#### Using the public_networks_network_id_ip_blocks_ip_block_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> public_networks_network_id_ip_blocks_ip_block_id_delete_with_http_info(public_network_id, ip_block_id)

```ruby
begin
  # Removes the IP Block from the Public Network.
  data, status_code, headers = api_instance.public_networks_network_id_ip_blocks_ip_block_id_delete_with_http_info(public_network_id, ip_block_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue NetworkApi::ApiError => e
  puts "Error when calling PublicNetworksApi->public_networks_network_id_ip_blocks_ip_block_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_network_id** | **String** | The Public Network identifier. |  |
| **ip_block_id** | **String** | The IP Block identifier. |  |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## public_networks_network_id_ip_blocks_post

> <PublicNetworkIpBlock> public_networks_network_id_ip_blocks_post(public_network_id, opts)

Adds an IP block to this public network.

Adds an IP block to this public network.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::PublicNetworksApi.new
public_network_id = '603f3b2cfcaf050643b89a4b' # String | The Public Network identifier.
opts = {
  public_network_ip_block: NetworkApi::PublicNetworkIpBlock.new({id: '60473a6115e34466c9f8f083'}) # PublicNetworkIpBlock | 
}

begin
  # Adds an IP block to this public network.
  result = api_instance.public_networks_network_id_ip_blocks_post(public_network_id, opts)
  p result
rescue NetworkApi::ApiError => e
  puts "Error when calling PublicNetworksApi->public_networks_network_id_ip_blocks_post: #{e}"
end
```

#### Using the public_networks_network_id_ip_blocks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicNetworkIpBlock>, Integer, Hash)> public_networks_network_id_ip_blocks_post_with_http_info(public_network_id, opts)

```ruby
begin
  # Adds an IP block to this public network.
  data, status_code, headers = api_instance.public_networks_network_id_ip_blocks_post_with_http_info(public_network_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicNetworkIpBlock>
rescue NetworkApi::ApiError => e
  puts "Error when calling PublicNetworksApi->public_networks_network_id_ip_blocks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_network_id** | **String** | The Public Network identifier. |  |
| **public_network_ip_block** | [**PublicNetworkIpBlock**](PublicNetworkIpBlock.md) |  | [optional] |

### Return type

[**PublicNetworkIpBlock**](PublicNetworkIpBlock.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## public_networks_network_id_patch

> <PublicNetwork> public_networks_network_id_patch(public_network_id, opts)

Update Public Network's Details.

Update Public Network's Details.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::PublicNetworksApi.new
public_network_id = '603f3b2cfcaf050643b89a4b' # String | The Public Network identifier.
opts = {
  public_network_modify: NetworkApi::PublicNetworkModify.new # PublicNetworkModify | 
}

begin
  # Update Public Network's Details.
  result = api_instance.public_networks_network_id_patch(public_network_id, opts)
  p result
rescue NetworkApi::ApiError => e
  puts "Error when calling PublicNetworksApi->public_networks_network_id_patch: #{e}"
end
```

#### Using the public_networks_network_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicNetwork>, Integer, Hash)> public_networks_network_id_patch_with_http_info(public_network_id, opts)

```ruby
begin
  # Update Public Network's Details.
  data, status_code, headers = api_instance.public_networks_network_id_patch_with_http_info(public_network_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicNetwork>
rescue NetworkApi::ApiError => e
  puts "Error when calling PublicNetworksApi->public_networks_network_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_network_id** | **String** | The Public Network identifier. |  |
| **public_network_modify** | [**PublicNetworkModify**](PublicNetworkModify.md) |  | [optional] |

### Return type

[**PublicNetwork**](PublicNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## public_networks_post

> <PublicNetwork> public_networks_post(opts)

Create a public network.

Create a public network.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::PublicNetworksApi.new
opts = {
  public_network_create: NetworkApi::PublicNetworkCreate.new({name: 'Sample Network', location: 'PHX'}) # PublicNetworkCreate | 
}

begin
  # Create a public network.
  result = api_instance.public_networks_post(opts)
  p result
rescue NetworkApi::ApiError => e
  puts "Error when calling PublicNetworksApi->public_networks_post: #{e}"
end
```

#### Using the public_networks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PublicNetwork>, Integer, Hash)> public_networks_post_with_http_info(opts)

```ruby
begin
  # Create a public network.
  data, status_code, headers = api_instance.public_networks_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PublicNetwork>
rescue NetworkApi::ApiError => e
  puts "Error when calling PublicNetworksApi->public_networks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_network_create** | [**PublicNetworkCreate**](PublicNetworkCreate.md) |  | [optional] |

### Return type

[**PublicNetwork**](PublicNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

