# BmcApi::SSHKeysApi

All URIs are relative to *https://api.phoenixnap.com/bmc/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ssh_keys_get**](SSHKeysApi.md#ssh_keys_get) | **GET** /ssh-keys | List SSH Keys. |
| [**ssh_keys_post**](SSHKeysApi.md#ssh_keys_post) | **POST** /ssh-keys | Create SSH Key. |
| [**ssh_keys_ssh_key_id_delete**](SSHKeysApi.md#ssh_keys_ssh_key_id_delete) | **DELETE** /ssh-keys/{sshKeyId} | Delete SSH Key. |
| [**ssh_keys_ssh_key_id_get**](SSHKeysApi.md#ssh_keys_ssh_key_id_get) | **GET** /ssh-keys/{sshKeyId} | Get SSH Key. |
| [**ssh_keys_ssh_key_id_put**](SSHKeysApi.md#ssh_keys_ssh_key_id_put) | **PUT** /ssh-keys/{sshKeyId} | Edit SSH Key. |


## ssh_keys_get

> <Array<SshKey>> ssh_keys_get

List SSH Keys.

List all SSH Keys.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::SSHKeysApi.new

begin
  # List SSH Keys.
  result = api_instance.ssh_keys_get
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling SSHKeysApi->ssh_keys_get: #{e}"
end
```

#### Using the ssh_keys_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SshKey>>, Integer, Hash)> ssh_keys_get_with_http_info

```ruby
begin
  # List SSH Keys.
  data, status_code, headers = api_instance.ssh_keys_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SshKey>>
rescue BmcApi::ApiError => e
  puts "Error when calling SSHKeysApi->ssh_keys_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SshKey&gt;**](SshKey.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ssh_keys_post

> <SshKey> ssh_keys_post(opts)

Create SSH Key.

Create an SSH Key. SSH Keys created can be used for server creation and reset functionality.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::SSHKeysApi.new
opts = {
  ssh_key_create: BmcApi::SshKeyCreate.new({default: true, name: 'sshkey-name-01', key: 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDF9LdAFElNCi7JoWh6KUcchrJ2Gac1aqGRPpdZNowObpRtmiRCecAMb7bUgNAaNfcmwiQi7tos9TlnFgprIcfMWb8MSs3ABYHmBgqEEt3RWYf0fAc9CsIpJdMCUG28TPGTlRXCEUVNKgLMdcseAlJoGp1CgbHWIN65fB3he3kAZcfpPn5mapV0tsl2p+ZyuAGRYdn5dJv2RZDHUZBkOeUobwsij+weHCKAFmKQKtCP7ybgVHaQjAPrj8MGnk1jBbjDt5ws+Be+9JNjQJee9zCKbAOsIo3i+GcUIkrw5jxPU/RTGlWBcemPaKHdciSzGcjWboapzIy49qypQhZe1U75 user@my_ip'}) # SshKeyCreate | 
}

begin
  # Create SSH Key.
  result = api_instance.ssh_keys_post(opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling SSHKeysApi->ssh_keys_post: #{e}"
end
```

#### Using the ssh_keys_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SshKey>, Integer, Hash)> ssh_keys_post_with_http_info(opts)

```ruby
begin
  # Create SSH Key.
  data, status_code, headers = api_instance.ssh_keys_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SshKey>
rescue BmcApi::ApiError => e
  puts "Error when calling SSHKeysApi->ssh_keys_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ssh_key_create** | [**SshKeyCreate**](SshKeyCreate.md) |  | [optional] |

### Return type

[**SshKey**](SshKey.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ssh_keys_ssh_key_id_delete

> <DeleteSshKeyResult> ssh_keys_ssh_key_id_delete(ssh_key_id)

Delete SSH Key.

Delete an SSH Key.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::SSHKeysApi.new
ssh_key_id = '5fa54d1e91867c03a0a7b4a4' # String | The SSH Key's ID.

begin
  # Delete SSH Key.
  result = api_instance.ssh_keys_ssh_key_id_delete(ssh_key_id)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling SSHKeysApi->ssh_keys_ssh_key_id_delete: #{e}"
end
```

#### Using the ssh_keys_ssh_key_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSshKeyResult>, Integer, Hash)> ssh_keys_ssh_key_id_delete_with_http_info(ssh_key_id)

```ruby
begin
  # Delete SSH Key.
  data, status_code, headers = api_instance.ssh_keys_ssh_key_id_delete_with_http_info(ssh_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSshKeyResult>
rescue BmcApi::ApiError => e
  puts "Error when calling SSHKeysApi->ssh_keys_ssh_key_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ssh_key_id** | **String** | The SSH Key&#39;s ID. |  |

### Return type

[**DeleteSshKeyResult**](DeleteSshKeyResult.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ssh_keys_ssh_key_id_get

> <SshKey> ssh_keys_ssh_key_id_get(ssh_key_id)

Get SSH Key.

Get SSH Key details.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::SSHKeysApi.new
ssh_key_id = '5fa54d1e91867c03a0a7b4a4' # String | The SSH Key's ID.

begin
  # Get SSH Key.
  result = api_instance.ssh_keys_ssh_key_id_get(ssh_key_id)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling SSHKeysApi->ssh_keys_ssh_key_id_get: #{e}"
end
```

#### Using the ssh_keys_ssh_key_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SshKey>, Integer, Hash)> ssh_keys_ssh_key_id_get_with_http_info(ssh_key_id)

```ruby
begin
  # Get SSH Key.
  data, status_code, headers = api_instance.ssh_keys_ssh_key_id_get_with_http_info(ssh_key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SshKey>
rescue BmcApi::ApiError => e
  puts "Error when calling SSHKeysApi->ssh_keys_ssh_key_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ssh_key_id** | **String** | The SSH Key&#39;s ID. |  |

### Return type

[**SshKey**](SshKey.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ssh_keys_ssh_key_id_put

> <SshKey> ssh_keys_ssh_key_id_put(ssh_key_id, opts)

Edit SSH Key.

Edit SSH Key details.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::SSHKeysApi.new
ssh_key_id = '5fa54d1e91867c03a0a7b4a4' # String | The SSH Key's ID.
opts = {
  ssh_key_update: BmcApi::SshKeyUpdate.new({default: true, name: 'sshkey-name-01'}) # SshKeyUpdate | 
}

begin
  # Edit SSH Key.
  result = api_instance.ssh_keys_ssh_key_id_put(ssh_key_id, opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling SSHKeysApi->ssh_keys_ssh_key_id_put: #{e}"
end
```

#### Using the ssh_keys_ssh_key_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SshKey>, Integer, Hash)> ssh_keys_ssh_key_id_put_with_http_info(ssh_key_id, opts)

```ruby
begin
  # Edit SSH Key.
  data, status_code, headers = api_instance.ssh_keys_ssh_key_id_put_with_http_info(ssh_key_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SshKey>
rescue BmcApi::ApiError => e
  puts "Error when calling SSHKeysApi->ssh_keys_ssh_key_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ssh_key_id** | **String** | The SSH Key&#39;s ID. |  |
| **ssh_key_update** | [**SshKeyUpdate**](SshKeyUpdate.md) |  | [optional] |

### Return type

[**SshKey**](SshKey.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

