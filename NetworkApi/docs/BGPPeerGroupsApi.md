# NetworkApi::BGPPeerGroupsApi

All URIs are relative to *https://api.phoenixnap.com/networks/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bgp_peer_groups_get**](BGPPeerGroupsApi.md#bgp_peer_groups_get) | **GET** /bgp-peer-groups | List BGP Peer Groups. |
| [**bgp_peer_groups_peer_group_id_delete**](BGPPeerGroupsApi.md#bgp_peer_groups_peer_group_id_delete) | **DELETE** /bgp-peer-groups/{bgpPeerGroupId} | Delete a BGP Peer Group. |
| [**bgp_peer_groups_peer_group_id_get**](BGPPeerGroupsApi.md#bgp_peer_groups_peer_group_id_get) | **GET** /bgp-peer-groups/{bgpPeerGroupId} | Get a BGP Peer Group. |
| [**bgp_peer_groups_peer_group_id_patch**](BGPPeerGroupsApi.md#bgp_peer_groups_peer_group_id_patch) | **PATCH** /bgp-peer-groups/{bgpPeerGroupId} | Modify a BGP Peer Group. |
| [**bgp_peer_groups_post**](BGPPeerGroupsApi.md#bgp_peer_groups_post) | **POST** /bgp-peer-groups | Create a BGP Peer Group. |


## bgp_peer_groups_get

> <Array<BgpPeerGroup>> bgp_peer_groups_get(opts)

List BGP Peer Groups.

List all BGP Peer Groups owned by account.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::BGPPeerGroupsApi.new
opts = {
  location: 'PHX' # String | If present will filter the result by the given location of the BGP Peer Group.
}

begin
  # List BGP Peer Groups.
  result = api_instance.bgp_peer_groups_get(opts)
  p result
rescue NetworkApi::ApiError => e
  puts "Error when calling BGPPeerGroupsApi->bgp_peer_groups_get: #{e}"
end
```

#### Using the bgp_peer_groups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BgpPeerGroup>>, Integer, Hash)> bgp_peer_groups_get_with_http_info(opts)

```ruby
begin
  # List BGP Peer Groups.
  data, status_code, headers = api_instance.bgp_peer_groups_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BgpPeerGroup>>
rescue NetworkApi::ApiError => e
  puts "Error when calling BGPPeerGroupsApi->bgp_peer_groups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | If present will filter the result by the given location of the BGP Peer Group. | [optional] |

### Return type

[**Array&lt;BgpPeerGroup&gt;**](BgpPeerGroup.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## bgp_peer_groups_peer_group_id_delete

> <BgpPeerGroup> bgp_peer_groups_peer_group_id_delete(bgp_peer_group_id)

Delete a BGP Peer Group.

Deletes BGP Peer Group by ID.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::BGPPeerGroupsApi.new
bgp_peer_group_id = '603f3b2cfcaf050643b89a4b' # String | The BGP peer group ID.

begin
  # Delete a BGP Peer Group.
  result = api_instance.bgp_peer_groups_peer_group_id_delete(bgp_peer_group_id)
  p result
rescue NetworkApi::ApiError => e
  puts "Error when calling BGPPeerGroupsApi->bgp_peer_groups_peer_group_id_delete: #{e}"
end
```

#### Using the bgp_peer_groups_peer_group_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BgpPeerGroup>, Integer, Hash)> bgp_peer_groups_peer_group_id_delete_with_http_info(bgp_peer_group_id)

```ruby
begin
  # Delete a BGP Peer Group.
  data, status_code, headers = api_instance.bgp_peer_groups_peer_group_id_delete_with_http_info(bgp_peer_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BgpPeerGroup>
rescue NetworkApi::ApiError => e
  puts "Error when calling BGPPeerGroupsApi->bgp_peer_groups_peer_group_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bgp_peer_group_id** | **String** | The BGP peer group ID. |  |

### Return type

[**BgpPeerGroup**](BgpPeerGroup.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## bgp_peer_groups_peer_group_id_get

> <BgpPeerGroup> bgp_peer_groups_peer_group_id_get(bgp_peer_group_id)

Get a BGP Peer Group.

Retrieves BGP Peer Group by ID.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::BGPPeerGroupsApi.new
bgp_peer_group_id = '603f3b2cfcaf050643b89a4b' # String | The BGP peer group ID.

begin
  # Get a BGP Peer Group.
  result = api_instance.bgp_peer_groups_peer_group_id_get(bgp_peer_group_id)
  p result
rescue NetworkApi::ApiError => e
  puts "Error when calling BGPPeerGroupsApi->bgp_peer_groups_peer_group_id_get: #{e}"
end
```

#### Using the bgp_peer_groups_peer_group_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BgpPeerGroup>, Integer, Hash)> bgp_peer_groups_peer_group_id_get_with_http_info(bgp_peer_group_id)

```ruby
begin
  # Get a BGP Peer Group.
  data, status_code, headers = api_instance.bgp_peer_groups_peer_group_id_get_with_http_info(bgp_peer_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BgpPeerGroup>
rescue NetworkApi::ApiError => e
  puts "Error when calling BGPPeerGroupsApi->bgp_peer_groups_peer_group_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bgp_peer_group_id** | **String** | The BGP peer group ID. |  |

### Return type

[**BgpPeerGroup**](BgpPeerGroup.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## bgp_peer_groups_peer_group_id_patch

> <BgpPeerGroup> bgp_peer_groups_peer_group_id_patch(bgp_peer_group_id, bgp_peer_group_patch)

Modify a BGP Peer Group.

Modifies BGP Peer Group by ID.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::BGPPeerGroupsApi.new
bgp_peer_group_id = '603f3b2cfcaf050643b89a4b' # String | The BGP peer group ID.
bgp_peer_group_patch = NetworkApi::BgpPeerGroupPatch.new # BgpPeerGroupPatch | 

begin
  # Modify a BGP Peer Group.
  result = api_instance.bgp_peer_groups_peer_group_id_patch(bgp_peer_group_id, bgp_peer_group_patch)
  p result
rescue NetworkApi::ApiError => e
  puts "Error when calling BGPPeerGroupsApi->bgp_peer_groups_peer_group_id_patch: #{e}"
end
```

#### Using the bgp_peer_groups_peer_group_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BgpPeerGroup>, Integer, Hash)> bgp_peer_groups_peer_group_id_patch_with_http_info(bgp_peer_group_id, bgp_peer_group_patch)

```ruby
begin
  # Modify a BGP Peer Group.
  data, status_code, headers = api_instance.bgp_peer_groups_peer_group_id_patch_with_http_info(bgp_peer_group_id, bgp_peer_group_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BgpPeerGroup>
rescue NetworkApi::ApiError => e
  puts "Error when calling BGPPeerGroupsApi->bgp_peer_groups_peer_group_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bgp_peer_group_id** | **String** | The BGP peer group ID. |  |
| **bgp_peer_group_patch** | [**BgpPeerGroupPatch**](BgpPeerGroupPatch.md) |  |  |

### Return type

[**BgpPeerGroup**](BgpPeerGroup.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## bgp_peer_groups_post

> <BgpPeerGroup> bgp_peer_groups_post(bgp_peer_group_create)

Create a BGP Peer Group.

Create a BGP Peer Group.

### Examples

```ruby
require 'time'
require 'pnap_network_api'
# setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::BGPPeerGroupsApi.new
bgp_peer_group_create = NetworkApi::BgpPeerGroupCreate.new({location: 'ASH', asn: 65401, advertised_routes: 'DEFAULT'}) # BgpPeerGroupCreate | 

begin
  # Create a BGP Peer Group.
  result = api_instance.bgp_peer_groups_post(bgp_peer_group_create)
  p result
rescue NetworkApi::ApiError => e
  puts "Error when calling BGPPeerGroupsApi->bgp_peer_groups_post: #{e}"
end
```

#### Using the bgp_peer_groups_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BgpPeerGroup>, Integer, Hash)> bgp_peer_groups_post_with_http_info(bgp_peer_group_create)

```ruby
begin
  # Create a BGP Peer Group.
  data, status_code, headers = api_instance.bgp_peer_groups_post_with_http_info(bgp_peer_group_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BgpPeerGroup>
rescue NetworkApi::ApiError => e
  puts "Error when calling BGPPeerGroupsApi->bgp_peer_groups_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bgp_peer_group_create** | [**BgpPeerGroupCreate**](BgpPeerGroupCreate.md) |  |  |

### Return type

[**BgpPeerGroup**](BgpPeerGroup.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

