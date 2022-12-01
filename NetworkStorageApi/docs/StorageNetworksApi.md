# NetworkStorageApi::StorageNetworksApi

All URIs are relative to *https://api.phoenixnap.com/network-storage/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**storage_networks_get**](StorageNetworksApi.md#storage_networks_get) | **GET** /storage-networks | List all storage networks. |
| [**storage_networks_id_delete**](StorageNetworksApi.md#storage_networks_id_delete) | **DELETE** /storage-networks/{storageNetworkId} | Delete a storage network and its volume. |
| [**storage_networks_id_get**](StorageNetworksApi.md#storage_networks_id_get) | **GET** /storage-networks/{storageNetworkId} | Get storage network details. |
| [**storage_networks_id_patch**](StorageNetworksApi.md#storage_networks_id_patch) | **PATCH** /storage-networks/{storageNetworkId} | Update storage network details. |
| [**storage_networks_post**](StorageNetworksApi.md#storage_networks_post) | **POST** /storage-networks | Create a storage network and volume. |
| [**storage_networks_storage_network_id_volumes_get**](StorageNetworksApi.md#storage_networks_storage_network_id_volumes_get) | **GET** /storage-networks/{storageNetworkId}/volumes | Display one or more volumes belonging to a storage network. |
| [**storage_networks_storage_network_id_volumes_volume_id_delete**](StorageNetworksApi.md#storage_networks_storage_network_id_volumes_volume_id_delete) | **DELETE** /storage-networks/{storageNetworkId}/volumes/{volumeId} | Delete a Storage Network&#39;s Volume |
| [**storage_networks_storage_network_id_volumes_volume_id_get**](StorageNetworksApi.md#storage_networks_storage_network_id_volumes_volume_id_get) | **GET** /storage-networks/{storageNetworkId}/volumes/{volumeId} | Get a storage network&#39;s volume details. |
| [**storage_networks_storage_network_id_volumes_volume_id_patch**](StorageNetworksApi.md#storage_networks_storage_network_id_volumes_volume_id_patch) | **PATCH** /storage-networks/{storageNetworkId}/volumes/{volumeId} | Update a storage network&#39;s volume details. |


## storage_networks_get

> <Array<StorageNetwork>> storage_networks_get(opts)

List all storage networks.

List all storage networks.

### Examples

```ruby
require 'time'
require 'pnap_network_storage_api'
# setup authorization
NetworkStorageApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkStorageApi::StorageNetworksApi.new
opts = {
  location: 'PHX' # String | If present will filter the result by the given location.
}

begin
  # List all storage networks.
  result = api_instance.storage_networks_get(opts)
  p result
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_get: #{e}"
end
```

#### Using the storage_networks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<StorageNetwork>>, Integer, Hash)> storage_networks_get_with_http_info(opts)

```ruby
begin
  # List all storage networks.
  data, status_code, headers = api_instance.storage_networks_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<StorageNetwork>>
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | If present will filter the result by the given location. | [optional] |

### Return type

[**Array&lt;StorageNetwork&gt;**](StorageNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_networks_id_delete

> storage_networks_id_delete(storage_network_id)

Delete a storage network and its volume.

Delete a storage network and its volume. A storage network can only be removed if it's not in 'BUSY' state. Billing stops on storage network deletion.

### Examples

```ruby
require 'time'
require 'pnap_network_storage_api'
# setup authorization
NetworkStorageApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkStorageApi::StorageNetworksApi.new
storage_network_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of storage network.

begin
  # Delete a storage network and its volume.
  api_instance.storage_networks_id_delete(storage_network_id)
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_id_delete: #{e}"
end
```

#### Using the storage_networks_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> storage_networks_id_delete_with_http_info(storage_network_id)

```ruby
begin
  # Delete a storage network and its volume.
  data, status_code, headers = api_instance.storage_networks_id_delete_with_http_info(storage_network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_network_id** | **String** | ID of storage network. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_networks_id_get

> <StorageNetwork> storage_networks_id_get(storage_network_id)

Get storage network details.

Get storage network details.

### Examples

```ruby
require 'time'
require 'pnap_network_storage_api'
# setup authorization
NetworkStorageApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkStorageApi::StorageNetworksApi.new
storage_network_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of storage network.

begin
  # Get storage network details.
  result = api_instance.storage_networks_id_get(storage_network_id)
  p result
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_id_get: #{e}"
end
```

#### Using the storage_networks_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageNetwork>, Integer, Hash)> storage_networks_id_get_with_http_info(storage_network_id)

```ruby
begin
  # Get storage network details.
  data, status_code, headers = api_instance.storage_networks_id_get_with_http_info(storage_network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageNetwork>
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_network_id** | **String** | ID of storage network. |  |

### Return type

[**StorageNetwork**](StorageNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_networks_id_patch

> <StorageNetwork> storage_networks_id_patch(storage_network_id, opts)

Update storage network details.

Update storage network details.

### Examples

```ruby
require 'time'
require 'pnap_network_storage_api'
# setup authorization
NetworkStorageApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkStorageApi::StorageNetworksApi.new
storage_network_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of storage network.
opts = {
  storage_network_update: NetworkStorageApi::StorageNetworkUpdate.new # StorageNetworkUpdate | Storage network to be updated.
}

begin
  # Update storage network details.
  result = api_instance.storage_networks_id_patch(storage_network_id, opts)
  p result
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_id_patch: #{e}"
end
```

#### Using the storage_networks_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageNetwork>, Integer, Hash)> storage_networks_id_patch_with_http_info(storage_network_id, opts)

```ruby
begin
  # Update storage network details.
  data, status_code, headers = api_instance.storage_networks_id_patch_with_http_info(storage_network_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageNetwork>
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_network_id** | **String** | ID of storage network. |  |
| **storage_network_update** | [**StorageNetworkUpdate**](StorageNetworkUpdate.md) | Storage network to be updated. | [optional] |

### Return type

[**StorageNetwork**](StorageNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## storage_networks_post

> <StorageNetwork> storage_networks_post(opts)

Create a storage network and volume.

Create a storage network and volume.

### Examples

```ruby
require 'time'
require 'pnap_network_storage_api'
# setup authorization
NetworkStorageApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkStorageApi::StorageNetworksApi.new
opts = {
  storage_network_create: NetworkStorageApi::StorageNetworkCreate.new({name: 'My storage network', location: 'PHX', volumes: [NetworkStorageApi::VolumeCreate.new({name: 'My volume name', capacity_in_gb: 2000})]}) # StorageNetworkCreate | 
}

begin
  # Create a storage network and volume.
  result = api_instance.storage_networks_post(opts)
  p result
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_post: #{e}"
end
```

#### Using the storage_networks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageNetwork>, Integer, Hash)> storage_networks_post_with_http_info(opts)

```ruby
begin
  # Create a storage network and volume.
  data, status_code, headers = api_instance.storage_networks_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageNetwork>
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_network_create** | [**StorageNetworkCreate**](StorageNetworkCreate.md) |  | [optional] |

### Return type

[**StorageNetwork**](StorageNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## storage_networks_storage_network_id_volumes_get

> <Array<Volume>> storage_networks_storage_network_id_volumes_get(storage_network_id)

Display one or more volumes belonging to a storage network.

Display one or more volumes belonging to a storage network.

### Examples

```ruby
require 'time'
require 'pnap_network_storage_api'
# setup authorization
NetworkStorageApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkStorageApi::StorageNetworksApi.new
storage_network_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of storage network.

begin
  # Display one or more volumes belonging to a storage network.
  result = api_instance.storage_networks_storage_network_id_volumes_get(storage_network_id)
  p result
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_get: #{e}"
end
```

#### Using the storage_networks_storage_network_id_volumes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Volume>>, Integer, Hash)> storage_networks_storage_network_id_volumes_get_with_http_info(storage_network_id)

```ruby
begin
  # Display one or more volumes belonging to a storage network.
  data, status_code, headers = api_instance.storage_networks_storage_network_id_volumes_get_with_http_info(storage_network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Volume>>
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_network_id** | **String** | ID of storage network. |  |

### Return type

[**Array&lt;Volume&gt;**](Volume.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_networks_storage_network_id_volumes_volume_id_delete

> storage_networks_storage_network_id_volumes_volume_id_delete(storage_network_id, volume_id)

Delete a Storage Network's Volume

Delete a Storage Network's Volume

### Examples

```ruby
require 'time'
require 'pnap_network_storage_api'
# setup authorization
NetworkStorageApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkStorageApi::StorageNetworksApi.new
storage_network_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of storage network.
volume_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of volume.

begin
  # Delete a Storage Network's Volume
  api_instance.storage_networks_storage_network_id_volumes_volume_id_delete(storage_network_id, volume_id)
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_volume_id_delete: #{e}"
end
```

#### Using the storage_networks_storage_network_id_volumes_volume_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> storage_networks_storage_network_id_volumes_volume_id_delete_with_http_info(storage_network_id, volume_id)

```ruby
begin
  # Delete a Storage Network's Volume
  data, status_code, headers = api_instance.storage_networks_storage_network_id_volumes_volume_id_delete_with_http_info(storage_network_id, volume_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_volume_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_network_id** | **String** | ID of storage network. |  |
| **volume_id** | **String** | ID of volume. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_networks_storage_network_id_volumes_volume_id_get

> <Volume> storage_networks_storage_network_id_volumes_volume_id_get(storage_network_id, volume_id)

Get a storage network's volume details.

Get a storage network's volume details.

### Examples

```ruby
require 'time'
require 'pnap_network_storage_api'
# setup authorization
NetworkStorageApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkStorageApi::StorageNetworksApi.new
storage_network_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of storage network.
volume_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of volume.

begin
  # Get a storage network's volume details.
  result = api_instance.storage_networks_storage_network_id_volumes_volume_id_get(storage_network_id, volume_id)
  p result
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_volume_id_get: #{e}"
end
```

#### Using the storage_networks_storage_network_id_volumes_volume_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> storage_networks_storage_network_id_volumes_volume_id_get_with_http_info(storage_network_id, volume_id)

```ruby
begin
  # Get a storage network's volume details.
  data, status_code, headers = api_instance.storage_networks_storage_network_id_volumes_volume_id_get_with_http_info(storage_network_id, volume_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_volume_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_network_id** | **String** | ID of storage network. |  |
| **volume_id** | **String** | ID of volume. |  |

### Return type

[**Volume**](Volume.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_networks_storage_network_id_volumes_volume_id_patch

> <Volume> storage_networks_storage_network_id_volumes_volume_id_patch(storage_network_id, volume_id, opts)

Update a storage network's volume details.

Update a storage network's volume details.

### Examples

```ruby
require 'time'
require 'pnap_network_storage_api'
# setup authorization
NetworkStorageApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkStorageApi::StorageNetworksApi.new
storage_network_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of storage network.
volume_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of volume.
opts = {
  volume_update: NetworkStorageApi::VolumeUpdate.new # VolumeUpdate | Storage network volume to be updated.
}

begin
  # Update a storage network's volume details.
  result = api_instance.storage_networks_storage_network_id_volumes_volume_id_patch(storage_network_id, volume_id, opts)
  p result
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_volume_id_patch: #{e}"
end
```

#### Using the storage_networks_storage_network_id_volumes_volume_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> storage_networks_storage_network_id_volumes_volume_id_patch_with_http_info(storage_network_id, volume_id, opts)

```ruby
begin
  # Update a storage network's volume details.
  data, status_code, headers = api_instance.storage_networks_storage_network_id_volumes_volume_id_patch_with_http_info(storage_network_id, volume_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_volume_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_network_id** | **String** | ID of storage network. |  |
| **volume_id** | **String** | ID of volume. |  |
| **volume_update** | [**VolumeUpdate**](VolumeUpdate.md) | Storage network volume to be updated. | [optional] |

### Return type

[**Volume**](Volume.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

