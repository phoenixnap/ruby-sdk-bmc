# IpApi::IPBlocksApi

All URIs are relative to *https://api.phoenixnap.com/ips/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ip_blocks_get**](IPBlocksApi.md#ip_blocks_get) | **GET** /ip-blocks | List IP Blocks. |
| [**ip_blocks_ip_block_id_delete**](IPBlocksApi.md#ip_blocks_ip_block_id_delete) | **DELETE** /ip-blocks/{ipBlockId} | Delete IP Block. |
| [**ip_blocks_ip_block_id_get**](IPBlocksApi.md#ip_blocks_ip_block_id_get) | **GET** /ip-blocks/{ipBlockId} | Get IP Block. |
| [**ip_blocks_ip_block_id_patch**](IPBlocksApi.md#ip_blocks_ip_block_id_patch) | **PATCH** /ip-blocks/{ipBlockId} | Update IP block. |
| [**ip_blocks_ip_block_id_tags_put**](IPBlocksApi.md#ip_blocks_ip_block_id_tags_put) | **PUT** /ip-blocks/{ipBlockId}/tags | Overwrite tags assigned for IP Block. |
| [**ip_blocks_post**](IPBlocksApi.md#ip_blocks_post) | **POST** /ip-blocks | Create an IP Block. |


## ip_blocks_get

> <Array<IpBlock>> ip_blocks_get(opts)

List IP Blocks.

List all IP Blocks.

### Examples

```ruby
require 'time'
require 'pnap_ip_api'
# setup authorization
IpApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IpApi::IPBlocksApi.new
opts = {
  tag: ['inner_example'] # Array<String> | List of tags, in the form tagName.tagValue, to filter by.
}

begin
  # List IP Blocks.
  result = api_instance.ip_blocks_get(opts)
  p result
rescue IpApi::ApiError => e
  puts "Error when calling IPBlocksApi->ip_blocks_get: #{e}"
end
```

#### Using the ip_blocks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<IpBlock>>, Integer, Hash)> ip_blocks_get_with_http_info(opts)

```ruby
begin
  # List IP Blocks.
  data, status_code, headers = api_instance.ip_blocks_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<IpBlock>>
rescue IpApi::ApiError => e
  puts "Error when calling IPBlocksApi->ip_blocks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag** | [**Array&lt;String&gt;**](String.md) | List of tags, in the form tagName.tagValue, to filter by. | [optional] |

### Return type

[**Array&lt;IpBlock&gt;**](IpBlock.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ip_blocks_ip_block_id_delete

> <DeleteIpBlockResult> ip_blocks_ip_block_id_delete(ip_block_id)

Delete IP Block.

Delete an IP Block. An IP Block can only be deleted if not assigned to any resource.

### Examples

```ruby
require 'time'
require 'pnap_ip_api'
# setup authorization
IpApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IpApi::IPBlocksApi.new
ip_block_id = '6047127fed34ecc3ba8402d2' # String | The IP Block identifier.

begin
  # Delete IP Block.
  result = api_instance.ip_blocks_ip_block_id_delete(ip_block_id)
  p result
rescue IpApi::ApiError => e
  puts "Error when calling IPBlocksApi->ip_blocks_ip_block_id_delete: #{e}"
end
```

#### Using the ip_blocks_ip_block_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteIpBlockResult>, Integer, Hash)> ip_blocks_ip_block_id_delete_with_http_info(ip_block_id)

```ruby
begin
  # Delete IP Block.
  data, status_code, headers = api_instance.ip_blocks_ip_block_id_delete_with_http_info(ip_block_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteIpBlockResult>
rescue IpApi::ApiError => e
  puts "Error when calling IPBlocksApi->ip_blocks_ip_block_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_block_id** | **String** | The IP Block identifier. |  |

### Return type

[**DeleteIpBlockResult**](DeleteIpBlockResult.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ip_blocks_ip_block_id_get

> <IpBlock> ip_blocks_ip_block_id_get(ip_block_id)

Get IP Block.

Get IP Block.

### Examples

```ruby
require 'time'
require 'pnap_ip_api'
# setup authorization
IpApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IpApi::IPBlocksApi.new
ip_block_id = '6047127fed34ecc3ba8402d2' # String | The IP Block identifier.

begin
  # Get IP Block.
  result = api_instance.ip_blocks_ip_block_id_get(ip_block_id)
  p result
rescue IpApi::ApiError => e
  puts "Error when calling IPBlocksApi->ip_blocks_ip_block_id_get: #{e}"
end
```

#### Using the ip_blocks_ip_block_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpBlock>, Integer, Hash)> ip_blocks_ip_block_id_get_with_http_info(ip_block_id)

```ruby
begin
  # Get IP Block.
  data, status_code, headers = api_instance.ip_blocks_ip_block_id_get_with_http_info(ip_block_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpBlock>
rescue IpApi::ApiError => e
  puts "Error when calling IPBlocksApi->ip_blocks_ip_block_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_block_id** | **String** | The IP Block identifier. |  |

### Return type

[**IpBlock**](IpBlock.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ip_blocks_ip_block_id_patch

> <IpBlock> ip_blocks_ip_block_id_patch(ip_block_id, ip_block_patch)

Update IP block.

Update IP Block's details.

### Examples

```ruby
require 'time'
require 'pnap_ip_api'
# setup authorization
IpApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IpApi::IPBlocksApi.new
ip_block_id = '6047127fed34ecc3ba8402d2' # String | The IP Block identifier.
ip_block_patch = IpApi::IpBlockPatch.new # IpBlockPatch | 

begin
  # Update IP block.
  result = api_instance.ip_blocks_ip_block_id_patch(ip_block_id, ip_block_patch)
  p result
rescue IpApi::ApiError => e
  puts "Error when calling IPBlocksApi->ip_blocks_ip_block_id_patch: #{e}"
end
```

#### Using the ip_blocks_ip_block_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpBlock>, Integer, Hash)> ip_blocks_ip_block_id_patch_with_http_info(ip_block_id, ip_block_patch)

```ruby
begin
  # Update IP block.
  data, status_code, headers = api_instance.ip_blocks_ip_block_id_patch_with_http_info(ip_block_id, ip_block_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpBlock>
rescue IpApi::ApiError => e
  puts "Error when calling IPBlocksApi->ip_blocks_ip_block_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_block_id** | **String** | The IP Block identifier. |  |
| **ip_block_patch** | [**IpBlockPatch**](IpBlockPatch.md) |  |  |

### Return type

[**IpBlock**](IpBlock.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ip_blocks_ip_block_id_tags_put

> <IpBlock> ip_blocks_ip_block_id_tags_put(ip_block_id, tag_assignment_request)

Overwrite tags assigned for IP Block.

Overwrites tags assigned for IP Block and unassigns any tags not part of the request.

### Examples

```ruby
require 'time'
require 'pnap_ip_api'
# setup authorization
IpApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IpApi::IPBlocksApi.new
ip_block_id = '6047127fed34ecc3ba8402d2' # String | The IP Block identifier.
tag_assignment_request = [IpApi::TagAssignmentRequest.new({name: 'Environment'})] # Array<TagAssignmentRequest> | 

begin
  # Overwrite tags assigned for IP Block.
  result = api_instance.ip_blocks_ip_block_id_tags_put(ip_block_id, tag_assignment_request)
  p result
rescue IpApi::ApiError => e
  puts "Error when calling IPBlocksApi->ip_blocks_ip_block_id_tags_put: #{e}"
end
```

#### Using the ip_blocks_ip_block_id_tags_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpBlock>, Integer, Hash)> ip_blocks_ip_block_id_tags_put_with_http_info(ip_block_id, tag_assignment_request)

```ruby
begin
  # Overwrite tags assigned for IP Block.
  data, status_code, headers = api_instance.ip_blocks_ip_block_id_tags_put_with_http_info(ip_block_id, tag_assignment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpBlock>
rescue IpApi::ApiError => e
  puts "Error when calling IPBlocksApi->ip_blocks_ip_block_id_tags_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_block_id** | **String** | The IP Block identifier. |  |
| **tag_assignment_request** | [**Array&lt;TagAssignmentRequest&gt;**](TagAssignmentRequest.md) |  |  |

### Return type

[**IpBlock**](IpBlock.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ip_blocks_post

> <IpBlock> ip_blocks_post(ip_block_create)

Create an IP Block.

Request an IP Block. An IP Block is a set of contiguous IPs that can be assigned to other resources such as servers.

### Examples

```ruby
require 'time'
require 'pnap_ip_api'
# setup authorization
IpApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IpApi::IPBlocksApi.new
ip_block_create = IpApi::IpBlockCreate.new({location: 'PHX', cidr_block_size: '/30'}) # IpBlockCreate | 

begin
  # Create an IP Block.
  result = api_instance.ip_blocks_post(ip_block_create)
  p result
rescue IpApi::ApiError => e
  puts "Error when calling IPBlocksApi->ip_blocks_post: #{e}"
end
```

#### Using the ip_blocks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IpBlock>, Integer, Hash)> ip_blocks_post_with_http_info(ip_block_create)

```ruby
begin
  # Create an IP Block.
  data, status_code, headers = api_instance.ip_blocks_post_with_http_info(ip_block_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IpBlock>
rescue IpApi::ApiError => e
  puts "Error when calling IPBlocksApi->ip_blocks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_block_create** | [**IpBlockCreate**](IpBlockCreate.md) |  |  |

### Return type

[**IpBlock**](IpBlock.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

