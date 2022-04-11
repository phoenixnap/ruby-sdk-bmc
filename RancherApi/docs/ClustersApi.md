# RancherApi::ClustersApi

All URIs are relative to *https://api.phoenixnap.com/solutions/rancher/v1beta*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**clusters_get**](ClustersApi.md#clusters_get) | **GET** /clusters | Cluster list. |
| [**clusters_id_delete**](ClustersApi.md#clusters_id_delete) | **DELETE** /clusters/{id} | Delete a cluster. |
| [**clusters_id_get**](ClustersApi.md#clusters_id_get) | **GET** /clusters/{id} | Retrieve a Cluster |
| [**clusters_post**](ClustersApi.md#clusters_post) | **POST** /clusters | Create a Rancher Server Deployment. |


## clusters_get

> <Array<Cluster>> clusters_get

Cluster list.

Cluster list.

### Examples

```ruby
require 'time'
require 'pnap_rancher_api'
# setup authorization
RancherApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RancherApi::ClustersApi.new

begin
  # Cluster list.
  result = api_instance.clusters_get
  p result
rescue RancherApi::ApiError => e
  puts "Error when calling ClustersApi->clusters_get: #{e}"
end
```

#### Using the clusters_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Cluster>>, Integer, Hash)> clusters_get_with_http_info

```ruby
begin
  # Cluster list.
  data, status_code, headers = api_instance.clusters_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Cluster>>
rescue RancherApi::ApiError => e
  puts "Error when calling ClustersApi->clusters_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Cluster&gt;**](Cluster.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_id_delete

> <DeleteResult> clusters_id_delete(id)

Delete a cluster.

Delete a cluster.

### Examples

```ruby
require 'time'
require 'pnap_rancher_api'
# setup authorization
RancherApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RancherApi::ClustersApi.new
id = '123' # String | The Cluster identifier.

begin
  # Delete a cluster.
  result = api_instance.clusters_id_delete(id)
  p result
rescue RancherApi::ApiError => e
  puts "Error when calling ClustersApi->clusters_id_delete: #{e}"
end
```

#### Using the clusters_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResult>, Integer, Hash)> clusters_id_delete_with_http_info(id)

```ruby
begin
  # Delete a cluster.
  data, status_code, headers = api_instance.clusters_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResult>
rescue RancherApi::ApiError => e
  puts "Error when calling ClustersApi->clusters_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Cluster identifier. |  |

### Return type

[**DeleteResult**](DeleteResult.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_id_get

> <Cluster> clusters_id_get(id)

Retrieve a Cluster

Retrieve a Cluster

### Examples

```ruby
require 'time'
require 'pnap_rancher_api'
# setup authorization
RancherApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RancherApi::ClustersApi.new
id = '123' # String | The Cluster identifier.

begin
  # Retrieve a Cluster
  result = api_instance.clusters_id_get(id)
  p result
rescue RancherApi::ApiError => e
  puts "Error when calling ClustersApi->clusters_id_get: #{e}"
end
```

#### Using the clusters_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Cluster>, Integer, Hash)> clusters_id_get_with_http_info(id)

```ruby
begin
  # Retrieve a Cluster
  data, status_code, headers = api_instance.clusters_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Cluster>
rescue RancherApi::ApiError => e
  puts "Error when calling ClustersApi->clusters_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Cluster identifier. |  |

### Return type

[**Cluster**](Cluster.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_post

> <Cluster> clusters_post(opts)

Create a Rancher Server Deployment.

Create a Rancher Server Deployment as described in <a href='https://rancher.com/docs/rancher/v2.5/en/overview/architecture/#rancher-server-architecture' target='_blank'>Rancher Docs Architecture</a>. Rancher Server allows the creation, import and management of multiple Downstream User Kubernetes Clusters. <b>This is not a Downstream User Cluster</b>. 

### Examples

```ruby
require 'time'
require 'pnap_rancher_api'
# setup authorization
RancherApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RancherApi::ClustersApi.new
opts = {
  cluster: RancherApi::Cluster.new({location: 'PHX'}) # Cluster | 
}

begin
  # Create a Rancher Server Deployment.
  result = api_instance.clusters_post(opts)
  p result
rescue RancherApi::ApiError => e
  puts "Error when calling ClustersApi->clusters_post: #{e}"
end
```

#### Using the clusters_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Cluster>, Integer, Hash)> clusters_post_with_http_info(opts)

```ruby
begin
  # Create a Rancher Server Deployment.
  data, status_code, headers = api_instance.clusters_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Cluster>
rescue RancherApi::ApiError => e
  puts "Error when calling ClustersApi->clusters_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster** | [**Cluster**](Cluster.md) |  | [optional] |

### Return type

[**Cluster**](Cluster.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

