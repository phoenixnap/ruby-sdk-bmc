# NetworkStorageApi::StorageNetworksApi

All URIs are relative to *https://api.phoenixnap.com/network-storage/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**storage_networks_get**](StorageNetworksApi.md#storage_networks_get) | **GET** /storage-networks | List all storage networks. |
| [**storage_networks_id_delete**](StorageNetworksApi.md#storage_networks_id_delete) | **DELETE** /storage-networks/{storageId} | Delete a storage network and its volume. |
| [**storage_networks_id_get**](StorageNetworksApi.md#storage_networks_id_get) | **GET** /storage-networks/{storageId} | Get storage network details. |
| [**storage_networks_id_patch**](StorageNetworksApi.md#storage_networks_id_patch) | **PATCH** /storage-networks/{storageId} | Update storage network details. |
| [**storage_networks_post**](StorageNetworksApi.md#storage_networks_post) | **POST** /storage-networks | Create a storage network and volume. |
| [**storage_networks_storage_network_id_volumes_get**](StorageNetworksApi.md#storage_networks_storage_network_id_volumes_get) | **GET** /storage-networks/{storageId}/volumes | Display one or more volumes belonging to a storage network. |
| [**storage_networks_storage_network_id_volumes_post**](StorageNetworksApi.md#storage_networks_storage_network_id_volumes_post) | **POST** /storage-networks/{storageId}/volumes | Create a volume belonging to a storage network. |
| [**storage_networks_storage_network_id_volumes_volume_id_delete**](StorageNetworksApi.md#storage_networks_storage_network_id_volumes_volume_id_delete) | **DELETE** /storage-networks/{storageId}/volumes/{volumeId} | Delete a Storage Network&#39;s Volume |
| [**storage_networks_storage_network_id_volumes_volume_id_get**](StorageNetworksApi.md#storage_networks_storage_network_id_volumes_volume_id_get) | **GET** /storage-networks/{storageId}/volumes/{volumeId} | Get a storage network&#39;s volume details. |
| [**storage_networks_storage_network_id_volumes_volume_id_patch**](StorageNetworksApi.md#storage_networks_storage_network_id_volumes_volume_id_patch) | **PATCH** /storage-networks/{storageId}/volumes/{volumeId} | Update a storage network&#39;s volume details. |
| [**storage_networks_storage_network_id_volumes_volume_id_tags_put**](StorageNetworksApi.md#storage_networks_storage_network_id_volumes_volume_id_tags_put) | **PUT** /storage-networks/{storageId}/volumes/{volumeId}/tags | Overwrites tags assigned for the volume. |


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

> storage_networks_id_delete(storage_id)

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
storage_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of the storage.

begin
  # Delete a storage network and its volume.
  api_instance.storage_networks_id_delete(storage_id)
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_id_delete: #{e}"
end
```

#### Using the storage_networks_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> storage_networks_id_delete_with_http_info(storage_id)

```ruby
begin
  # Delete a storage network and its volume.
  data, status_code, headers = api_instance.storage_networks_id_delete_with_http_info(storage_id)
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
| **storage_id** | **String** | ID of the storage. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_networks_id_get

> <StorageNetwork> storage_networks_id_get(storage_id)

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
storage_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of the storage.

begin
  # Get storage network details.
  result = api_instance.storage_networks_id_get(storage_id)
  p result
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_id_get: #{e}"
end
```

#### Using the storage_networks_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageNetwork>, Integer, Hash)> storage_networks_id_get_with_http_info(storage_id)

```ruby
begin
  # Get storage network details.
  data, status_code, headers = api_instance.storage_networks_id_get_with_http_info(storage_id)
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
| **storage_id** | **String** | ID of the storage. |  |

### Return type

[**StorageNetwork**](StorageNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_networks_id_patch

> <StorageNetwork> storage_networks_id_patch(storage_id, storage_network_update)

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
storage_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of the storage.
storage_network_update = NetworkStorageApi::StorageNetworkUpdate.new # StorageNetworkUpdate | Storage network to be updated.

begin
  # Update storage network details.
  result = api_instance.storage_networks_id_patch(storage_id, storage_network_update)
  p result
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_id_patch: #{e}"
end
```

#### Using the storage_networks_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageNetwork>, Integer, Hash)> storage_networks_id_patch_with_http_info(storage_id, storage_network_update)

```ruby
begin
  # Update storage network details.
  data, status_code, headers = api_instance.storage_networks_id_patch_with_http_info(storage_id, storage_network_update)
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
| **storage_id** | **String** | ID of the storage. |  |
| **storage_network_update** | [**StorageNetworkUpdate**](StorageNetworkUpdate.md) | Storage network to be updated. |  |

### Return type

[**StorageNetwork**](StorageNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## storage_networks_post

> <StorageNetwork> storage_networks_post(storage_network_create)

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
storage_network_create = NetworkStorageApi::StorageNetworkCreate.new({name: 'My storage network', location: 'PHX', volumes: [NetworkStorageApi::StorageNetworkVolumeCreate.new({name: 'My volume name', capacity_in_gb: 2000})]}) # StorageNetworkCreate | 

begin
  # Create a storage network and volume.
  result = api_instance.storage_networks_post(storage_network_create)
  p result
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_post: #{e}"
end
```

#### Using the storage_networks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageNetwork>, Integer, Hash)> storage_networks_post_with_http_info(storage_network_create)

```ruby
begin
  # Create a storage network and volume.
  data, status_code, headers = api_instance.storage_networks_post_with_http_info(storage_network_create)
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
| **storage_network_create** | [**StorageNetworkCreate**](StorageNetworkCreate.md) |  |  |

### Return type

[**StorageNetwork**](StorageNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## storage_networks_storage_network_id_volumes_get

> <Array<Volume>> storage_networks_storage_network_id_volumes_get(storage_id, opts)

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
storage_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of the storage.
opts = {
  tag: ['inner_example'] # Array<String> | A list of query parameters related to tags in the form of tagName.tagValue
}

begin
  # Display one or more volumes belonging to a storage network.
  result = api_instance.storage_networks_storage_network_id_volumes_get(storage_id, opts)
  p result
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_get: #{e}"
end
```

#### Using the storage_networks_storage_network_id_volumes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Volume>>, Integer, Hash)> storage_networks_storage_network_id_volumes_get_with_http_info(storage_id, opts)

```ruby
begin
  # Display one or more volumes belonging to a storage network.
  data, status_code, headers = api_instance.storage_networks_storage_network_id_volumes_get_with_http_info(storage_id, opts)
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
| **storage_id** | **String** | ID of the storage. |  |
| **tag** | [**Array&lt;String&gt;**](String.md) | A list of query parameters related to tags in the form of tagName.tagValue | [optional] |

### Return type

[**Array&lt;Volume&gt;**](Volume.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_networks_storage_network_id_volumes_post

> <Volume> storage_networks_storage_network_id_volumes_post(storage_id, volume_create)

Create a volume belonging to a storage network.

Create a volume belonging to a storage network.

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
storage_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of the storage.
volume_create = NetworkStorageApi::VolumeCreate.new({name: 'My volume name', capacity_in_gb: 2000}) # VolumeCreate | 

begin
  # Create a volume belonging to a storage network.
  result = api_instance.storage_networks_storage_network_id_volumes_post(storage_id, volume_create)
  p result
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_post: #{e}"
end
```

#### Using the storage_networks_storage_network_id_volumes_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> storage_networks_storage_network_id_volumes_post_with_http_info(storage_id, volume_create)

```ruby
begin
  # Create a volume belonging to a storage network.
  data, status_code, headers = api_instance.storage_networks_storage_network_id_volumes_post_with_http_info(storage_id, volume_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_id** | **String** | ID of the storage. |  |
| **volume_create** | [**VolumeCreate**](VolumeCreate.md) |  |  |

### Return type

[**Volume**](Volume.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## storage_networks_storage_network_id_volumes_volume_id_delete

> storage_networks_storage_network_id_volumes_volume_id_delete(storage_id, volume_id)

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
storage_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of the storage.
volume_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of volume.

begin
  # Delete a Storage Network's Volume
  api_instance.storage_networks_storage_network_id_volumes_volume_id_delete(storage_id, volume_id)
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_volume_id_delete: #{e}"
end
```

#### Using the storage_networks_storage_network_id_volumes_volume_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> storage_networks_storage_network_id_volumes_volume_id_delete_with_http_info(storage_id, volume_id)

```ruby
begin
  # Delete a Storage Network's Volume
  data, status_code, headers = api_instance.storage_networks_storage_network_id_volumes_volume_id_delete_with_http_info(storage_id, volume_id)
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
| **storage_id** | **String** | ID of the storage. |  |
| **volume_id** | **String** | ID of volume. |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_networks_storage_network_id_volumes_volume_id_get

> <Volume> storage_networks_storage_network_id_volumes_volume_id_get(storage_id, volume_id)

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
storage_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of the storage.
volume_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of volume.

begin
  # Get a storage network's volume details.
  result = api_instance.storage_networks_storage_network_id_volumes_volume_id_get(storage_id, volume_id)
  p result
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_volume_id_get: #{e}"
end
```

#### Using the storage_networks_storage_network_id_volumes_volume_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> storage_networks_storage_network_id_volumes_volume_id_get_with_http_info(storage_id, volume_id)

```ruby
begin
  # Get a storage network's volume details.
  data, status_code, headers = api_instance.storage_networks_storage_network_id_volumes_volume_id_get_with_http_info(storage_id, volume_id)
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
| **storage_id** | **String** | ID of the storage. |  |
| **volume_id** | **String** | ID of volume. |  |

### Return type

[**Volume**](Volume.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## storage_networks_storage_network_id_volumes_volume_id_patch

> <Volume> storage_networks_storage_network_id_volumes_volume_id_patch(storage_id, volume_id, volume_update)

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
storage_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of the storage.
volume_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of volume.
volume_update = NetworkStorageApi::VolumeUpdate.new # VolumeUpdate | Storage network volume to be updated.

begin
  # Update a storage network's volume details.
  result = api_instance.storage_networks_storage_network_id_volumes_volume_id_patch(storage_id, volume_id, volume_update)
  p result
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_volume_id_patch: #{e}"
end
```

#### Using the storage_networks_storage_network_id_volumes_volume_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> storage_networks_storage_network_id_volumes_volume_id_patch_with_http_info(storage_id, volume_id, volume_update)

```ruby
begin
  # Update a storage network's volume details.
  data, status_code, headers = api_instance.storage_networks_storage_network_id_volumes_volume_id_patch_with_http_info(storage_id, volume_id, volume_update)
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
| **storage_id** | **String** | ID of the storage. |  |
| **volume_id** | **String** | ID of volume. |  |
| **volume_update** | [**VolumeUpdate**](VolumeUpdate.md) | Storage network volume to be updated. |  |

### Return type

[**Volume**](Volume.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## storage_networks_storage_network_id_volumes_volume_id_tags_put

> <Volume> storage_networks_storage_network_id_volumes_volume_id_tags_put(storage_id, volume_id, tag_assignment_request)

Overwrites tags assigned for the volume.

Overwrites tags assigned for the volume.

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
storage_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of the storage.
volume_id = '50dc434c-9bba-427b-bcd6-0bdba45c4dd2' # String | ID of volume.
tag_assignment_request = [NetworkStorageApi::TagAssignmentRequest.new({name: 'Environment'})] # Array<TagAssignmentRequest> | Tags to assign to the volume.

begin
  # Overwrites tags assigned for the volume.
  result = api_instance.storage_networks_storage_network_id_volumes_volume_id_tags_put(storage_id, volume_id, tag_assignment_request)
  p result
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_volume_id_tags_put: #{e}"
end
```

#### Using the storage_networks_storage_network_id_volumes_volume_id_tags_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> storage_networks_storage_network_id_volumes_volume_id_tags_put_with_http_info(storage_id, volume_id, tag_assignment_request)

```ruby
begin
  # Overwrites tags assigned for the volume.
  data, status_code, headers = api_instance.storage_networks_storage_network_id_volumes_volume_id_tags_put_with_http_info(storage_id, volume_id, tag_assignment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue NetworkStorageApi::ApiError => e
  puts "Error when calling StorageNetworksApi->storage_networks_storage_network_id_volumes_volume_id_tags_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_id** | **String** | ID of the storage. |  |
| **volume_id** | **String** | ID of volume. |  |
| **tag_assignment_request** | [**Array&lt;TagAssignmentRequest&gt;**](TagAssignmentRequest.md) | Tags to assign to the volume. |  |

### Return type

[**Volume**](Volume.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

