# TagApi::TagsApi

All URIs are relative to *https://api.phoenixnap.com/tag-manager/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**tags_get**](TagsApi.md#tags_get) | **GET** /tags | List tags. |
| [**tags_post**](TagsApi.md#tags_post) | **POST** /tags | Create a Tag. |
| [**tags_tag_id_delete**](TagsApi.md#tags_tag_id_delete) | **DELETE** /tags/{tagId} | Delete a Tag. |
| [**tags_tag_id_get**](TagsApi.md#tags_tag_id_get) | **GET** /tags/{tagId} | Get a Tag. |
| [**tags_tag_id_patch**](TagsApi.md#tags_tag_id_patch) | **PATCH** /tags/{tagId} | Modify a Tag. |


## tags_get

> <Array<Tag>> tags_get(opts)

List tags.

Retrieve all tags belonging to the BMC Account.

### Examples

```ruby
require 'time'
require 'pnap_tag_api'
# setup authorization
TagApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TagApi::TagsApi.new
opts = {
  name: 'env' # String | Query a tag by its name.
}

begin
  # List tags.
  result = api_instance.tags_get(opts)
  p result
rescue TagApi::ApiError => e
  puts "Error when calling TagsApi->tags_get: #{e}"
end
```

#### Using the tags_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Tag>>, Integer, Hash)> tags_get_with_http_info(opts)

```ruby
begin
  # List tags.
  data, status_code, headers = api_instance.tags_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Tag>>
rescue TagApi::ApiError => e
  puts "Error when calling TagsApi->tags_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Query a tag by its name. | [optional] |

### Return type

[**Array&lt;Tag&gt;**](Tag.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tags_post

> <Tag> tags_post(tag_create)

Create a Tag.

Create a tag with the provided information.

### Examples

```ruby
require 'time'
require 'pnap_tag_api'
# setup authorization
TagApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TagApi::TagsApi.new
tag_create = TagApi::TagCreate.new({name: 'Environment', is_billing_tag: true}) # TagCreate | The body containing the tag details.

begin
  # Create a Tag.
  result = api_instance.tags_post(tag_create)
  p result
rescue TagApi::ApiError => e
  puts "Error when calling TagsApi->tags_post: #{e}"
end
```

#### Using the tags_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tag>, Integer, Hash)> tags_post_with_http_info(tag_create)

```ruby
begin
  # Create a Tag.
  data, status_code, headers = api_instance.tags_post_with_http_info(tag_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tag>
rescue TagApi::ApiError => e
  puts "Error when calling TagsApi->tags_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_create** | [**TagCreate**](TagCreate.md) | The body containing the tag details. |  |

### Return type

[**Tag**](Tag.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## tags_tag_id_delete

> <DeleteResult> tags_tag_id_delete(tag_id)

Delete a Tag.

Delete the tag with the given ID.

### Examples

```ruby
require 'time'
require 'pnap_tag_api'
# setup authorization
TagApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TagApi::TagsApi.new
tag_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The tag's ID.

begin
  # Delete a Tag.
  result = api_instance.tags_tag_id_delete(tag_id)
  p result
rescue TagApi::ApiError => e
  puts "Error when calling TagsApi->tags_tag_id_delete: #{e}"
end
```

#### Using the tags_tag_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResult>, Integer, Hash)> tags_tag_id_delete_with_http_info(tag_id)

```ruby
begin
  # Delete a Tag.
  data, status_code, headers = api_instance.tags_tag_id_delete_with_http_info(tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResult>
rescue TagApi::ApiError => e
  puts "Error when calling TagsApi->tags_tag_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **String** | The tag&#39;s ID. |  |

### Return type

[**DeleteResult**](DeleteResult.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tags_tag_id_get

> <Tag> tags_tag_id_get(tag_id)

Get a Tag.

Retrieve the tag with the given ID

### Examples

```ruby
require 'time'
require 'pnap_tag_api'
# setup authorization
TagApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TagApi::TagsApi.new
tag_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The tag's ID.

begin
  # Get a Tag.
  result = api_instance.tags_tag_id_get(tag_id)
  p result
rescue TagApi::ApiError => e
  puts "Error when calling TagsApi->tags_tag_id_get: #{e}"
end
```

#### Using the tags_tag_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tag>, Integer, Hash)> tags_tag_id_get_with_http_info(tag_id)

```ruby
begin
  # Get a Tag.
  data, status_code, headers = api_instance.tags_tag_id_get_with_http_info(tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tag>
rescue TagApi::ApiError => e
  puts "Error when calling TagsApi->tags_tag_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **String** | The tag&#39;s ID. |  |

### Return type

[**Tag**](Tag.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tags_tag_id_patch

> <Tag> tags_tag_id_patch(tag_id, tag_update)

Modify a Tag.

Updates the tag with the given ID.

### Examples

```ruby
require 'time'
require 'pnap_tag_api'
# setup authorization
TagApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TagApi::TagsApi.new
tag_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The tag's ID.
tag_update = TagApi::TagUpdate.new({name: 'Environment', is_billing_tag: true}) # TagUpdate | The body containing the tag changes.

begin
  # Modify a Tag.
  result = api_instance.tags_tag_id_patch(tag_id, tag_update)
  p result
rescue TagApi::ApiError => e
  puts "Error when calling TagsApi->tags_tag_id_patch: #{e}"
end
```

#### Using the tags_tag_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tag>, Integer, Hash)> tags_tag_id_patch_with_http_info(tag_id, tag_update)

```ruby
begin
  # Modify a Tag.
  data, status_code, headers = api_instance.tags_tag_id_patch_with_http_info(tag_id, tag_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tag>
rescue TagApi::ApiError => e
  puts "Error when calling TagsApi->tags_tag_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **String** | The tag&#39;s ID. |  |
| **tag_update** | [**TagUpdate**](TagUpdate.md) | The body containing the tag changes. |  |

### Return type

[**Tag**](Tag.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

