# BmcApi::ServersApi

All URIs are relative to *https://api.phoenixnap.com/bmc/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_private_network**](ServersApi.md#delete_private_network) | **DELETE** /servers/{serverId}/network-configuration/private-network-configuration/private-networks/{privateNetworkId} | Removes the server from private network. |
| [**servers_get**](ServersApi.md#servers_get) | **GET** /servers | List servers. |
| [**servers_post**](ServersApi.md#servers_post) | **POST** /servers | Create new server. |
| [**servers_server_id_actions_deprovision_post**](ServersApi.md#servers_server_id_actions_deprovision_post) | **POST** /servers/{serverId}/actions/deprovision | Deprovision a server. |
| [**servers_server_id_actions_power_off_post**](ServersApi.md#servers_server_id_actions_power_off_post) | **POST** /servers/{serverId}/actions/power-off | Power off server. |
| [**servers_server_id_actions_power_on_post**](ServersApi.md#servers_server_id_actions_power_on_post) | **POST** /servers/{serverId}/actions/power-on | Power on server. |
| [**servers_server_id_actions_reboot_post**](ServersApi.md#servers_server_id_actions_reboot_post) | **POST** /servers/{serverId}/actions/reboot | Reboot server. |
| [**servers_server_id_actions_reserve_post**](ServersApi.md#servers_server_id_actions_reserve_post) | **POST** /servers/{serverId}/actions/reserve | Reserve server. |
| [**servers_server_id_actions_reset_post**](ServersApi.md#servers_server_id_actions_reset_post) | **POST** /servers/{serverId}/actions/reset | Reset server. |
| [**servers_server_id_actions_shutdown_post**](ServersApi.md#servers_server_id_actions_shutdown_post) | **POST** /servers/{serverId}/actions/shutdown | Shutdown server. |
| [**servers_server_id_delete**](ServersApi.md#servers_server_id_delete) | **DELETE** /servers/{serverId} | Delete server. |
| [**servers_server_id_get**](ServersApi.md#servers_server_id_get) | **GET** /servers/{serverId} | Get server. |
| [**servers_server_id_ip_blocks_ip_block_id_delete**](ServersApi.md#servers_server_id_ip_blocks_ip_block_id_delete) | **DELETE** /servers/{serverId}/network-configuration/ip-block-configurations/ip-blocks/{ipBlockId} | Unassign IP Block from Server. |
| [**servers_server_id_ip_blocks_post**](ServersApi.md#servers_server_id_ip_blocks_post) | **POST** /servers/{serverId}/network-configuration/ip-block-configurations/ip-blocks | Assign IP Block to Server. |
| [**servers_server_id_patch**](ServersApi.md#servers_server_id_patch) | **PATCH** /servers/{serverId} | Patch a Server. |
| [**servers_server_id_private_networks_post**](ServersApi.md#servers_server_id_private_networks_post) | **POST** /servers/{serverId}/network-configuration/private-network-configuration/private-networks | Adds the server to a private network. |
| [**servers_server_id_tags_put**](ServersApi.md#servers_server_id_tags_put) | **PUT** /servers/{serverId}/tags | Set server tags. |


## delete_private_network

> String delete_private_network(server_id, private_network_id)

Removes the server from private network.

Removes the server from private network. <b>No actual configuration is performed on the operating system.</b> BMC configures exclusively the networking devices in the datacenter infrastructure. You are expected to perform network configuration changes in the operating system of this server. <b>This is an advanced network action that can make your server completely unavailable over any network. Make sure you are able to access this server over remote console in case of misconfiguration.</b>

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
server_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The server's ID.
private_network_id = '603f3b2cfcaf050643b89a4b' # String | The private network identifier.

begin
  # Removes the server from private network.
  result = api_instance.delete_private_network(server_id, private_network_id)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->delete_private_network: #{e}"
end
```

#### Using the delete_private_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> delete_private_network_with_http_info(server_id, private_network_id)

```ruby
begin
  # Removes the server from private network.
  data, status_code, headers = api_instance.delete_private_network_with_http_info(server_id, private_network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->delete_private_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |
| **private_network_id** | **String** | The private network identifier. |  |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_get

> <Array<Server>> servers_get(opts)

List servers.

List all servers owned by account.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
opts = {
  tag: ['inner_example'] # Array<String> | A list of query parameters related to tags in the form of tagName.tagValue
}

begin
  # List servers.
  result = api_instance.servers_get(opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_get: #{e}"
end
```

#### Using the servers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Server>>, Integer, Hash)> servers_get_with_http_info(opts)

```ruby
begin
  # List servers.
  data, status_code, headers = api_instance.servers_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Server>>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag** | [**Array&lt;String&gt;**](String.md) | A list of query parameters related to tags in the form of tagName.tagValue | [optional] |

### Return type

[**Array&lt;Server&gt;**](Server.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_post

> <Server> servers_post(opts)

Create new server.

Create (request) new server for account. Server DNS will be configured to access Google's public DNS at 8.8.8.8 .

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
opts = {
  server_create: BmcApi::ServerCreate.new({hostname: 'my-server-1', os: 'ubuntu/bionic', type: 's1.c1.small', location: 'PHX'}) # ServerCreate | 
}

begin
  # Create new server.
  result = api_instance.servers_post(opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_post: #{e}"
end
```

#### Using the servers_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_post_with_http_info(opts)

```ruby
begin
  # Create new server.
  data, status_code, headers = api_instance.servers_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_create** | [**ServerCreate**](ServerCreate.md) |  | [optional] |

### Return type

[**Server**](Server.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_actions_deprovision_post

> String servers_server_id_actions_deprovision_post(server_id, opts)

Deprovision a server.

Deprovision the server. Supports advanced deprovision configuration.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
server_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The server's ID.
opts = {
  relinquish_ip_block: BmcApi::RelinquishIpBlock.new # RelinquishIpBlock | 
}

begin
  # Deprovision a server.
  result = api_instance.servers_server_id_actions_deprovision_post(server_id, opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_deprovision_post: #{e}"
end
```

#### Using the servers_server_id_actions_deprovision_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> servers_server_id_actions_deprovision_post_with_http_info(server_id, opts)

```ruby
begin
  # Deprovision a server.
  data, status_code, headers = api_instance.servers_server_id_actions_deprovision_post_with_http_info(server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_deprovision_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |
| **relinquish_ip_block** | [**RelinquishIpBlock**](RelinquishIpBlock.md) |  | [optional] |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_actions_power_off_post

> <ActionResult> servers_server_id_actions_power_off_post(server_id)

Power off server.

Power off specific server.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
server_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The server's ID.

begin
  # Power off server.
  result = api_instance.servers_server_id_actions_power_off_post(server_id)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_power_off_post: #{e}"
end
```

#### Using the servers_server_id_actions_power_off_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionResult>, Integer, Hash)> servers_server_id_actions_power_off_post_with_http_info(server_id)

```ruby
begin
  # Power off server.
  data, status_code, headers = api_instance.servers_server_id_actions_power_off_post_with_http_info(server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionResult>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_power_off_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |

### Return type

[**ActionResult**](ActionResult.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_server_id_actions_power_on_post

> <ActionResult> servers_server_id_actions_power_on_post(server_id)

Power on server.

Power on specific server.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
server_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The server's ID.

begin
  # Power on server.
  result = api_instance.servers_server_id_actions_power_on_post(server_id)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_power_on_post: #{e}"
end
```

#### Using the servers_server_id_actions_power_on_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionResult>, Integer, Hash)> servers_server_id_actions_power_on_post_with_http_info(server_id)

```ruby
begin
  # Power on server.
  data, status_code, headers = api_instance.servers_server_id_actions_power_on_post_with_http_info(server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionResult>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_power_on_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |

### Return type

[**ActionResult**](ActionResult.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_server_id_actions_reboot_post

> <ActionResult> servers_server_id_actions_reboot_post(server_id)

Reboot server.

Reboot specific server.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
server_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The server's ID.

begin
  # Reboot server.
  result = api_instance.servers_server_id_actions_reboot_post(server_id)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_reboot_post: #{e}"
end
```

#### Using the servers_server_id_actions_reboot_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionResult>, Integer, Hash)> servers_server_id_actions_reboot_post_with_http_info(server_id)

```ruby
begin
  # Reboot server.
  data, status_code, headers = api_instance.servers_server_id_actions_reboot_post_with_http_info(server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionResult>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_reboot_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |

### Return type

[**ActionResult**](ActionResult.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_server_id_actions_reserve_post

> <Server> servers_server_id_actions_reserve_post(server_id, opts)

Reserve server.

Reserve specific server.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
server_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The server's ID.
opts = {
  server_reserve: BmcApi::ServerReserve.new({pricing_model: 'ONE_MONTH_RESERVATION'}) # ServerReserve | 
}

begin
  # Reserve server.
  result = api_instance.servers_server_id_actions_reserve_post(server_id, opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_reserve_post: #{e}"
end
```

#### Using the servers_server_id_actions_reserve_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_server_id_actions_reserve_post_with_http_info(server_id, opts)

```ruby
begin
  # Reserve server.
  data, status_code, headers = api_instance.servers_server_id_actions_reserve_post_with_http_info(server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_reserve_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |
| **server_reserve** | [**ServerReserve**](ServerReserve.md) |  | [optional] |

### Return type

[**Server**](Server.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_actions_reset_post

> <ResetResult> servers_server_id_actions_reset_post(server_id, opts)

Reset server.

Reset specific server.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
server_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The server's ID.
opts = {
  server_reset: BmcApi::ServerReset.new # ServerReset | 
}

begin
  # Reset server.
  result = api_instance.servers_server_id_actions_reset_post(server_id, opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_reset_post: #{e}"
end
```

#### Using the servers_server_id_actions_reset_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResetResult>, Integer, Hash)> servers_server_id_actions_reset_post_with_http_info(server_id, opts)

```ruby
begin
  # Reset server.
  data, status_code, headers = api_instance.servers_server_id_actions_reset_post_with_http_info(server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResetResult>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_reset_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |
| **server_reset** | [**ServerReset**](ServerReset.md) |  | [optional] |

### Return type

[**ResetResult**](ResetResult.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_actions_shutdown_post

> <ActionResult> servers_server_id_actions_shutdown_post(server_id)

Shutdown server.

Shut down specific server.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
server_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The server's ID.

begin
  # Shutdown server.
  result = api_instance.servers_server_id_actions_shutdown_post(server_id)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_shutdown_post: #{e}"
end
```

#### Using the servers_server_id_actions_shutdown_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionResult>, Integer, Hash)> servers_server_id_actions_shutdown_post_with_http_info(server_id)

```ruby
begin
  # Shutdown server.
  data, status_code, headers = api_instance.servers_server_id_actions_shutdown_post_with_http_info(server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionResult>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_shutdown_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |

### Return type

[**ActionResult**](ActionResult.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_server_id_delete

> <DeleteResult> servers_server_id_delete(server_id)

Delete server.

Deprovision specific server. Any IP blocks assigned to this server will also be relinquished and deleted. Deprecated: see /servers/{serverId}/actions/deprovision

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
server_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The server's ID.

begin
  # Delete server.
  result = api_instance.servers_server_id_delete(server_id)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_delete: #{e}"
end
```

#### Using the servers_server_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResult>, Integer, Hash)> servers_server_id_delete_with_http_info(server_id)

```ruby
begin
  # Delete server.
  data, status_code, headers = api_instance.servers_server_id_delete_with_http_info(server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResult>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |

### Return type

[**DeleteResult**](DeleteResult.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_server_id_get

> <Server> servers_server_id_get(server_id)

Get server.

Get server properties.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
server_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The server's ID.

begin
  # Get server.
  result = api_instance.servers_server_id_get(server_id)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_get: #{e}"
end
```

#### Using the servers_server_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_server_id_get_with_http_info(server_id)

```ruby
begin
  # Get server.
  data, status_code, headers = api_instance.servers_server_id_get_with_http_info(server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |

### Return type

[**Server**](Server.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_server_id_ip_blocks_ip_block_id_delete

> String servers_server_id_ip_blocks_ip_block_id_delete(server_id, ip_block_id, opts)

Unassign IP Block from Server.

Removes the IP block from the server. <b>No actual configuration is performed on the operating system.</b> BMC configures exclusively the networking devices in the datacenter infrastructure. You are expected to perform network configuration changes in the operating system of this server. <b>This is an advanced network action that can make your server completely unavailable over any network. Make sure you are able to access this server over remote console in case of misconfiguration.</b>

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
server_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The server's ID.
ip_block_id = '6047127fed34ecc3ba8402d2' # String | The IP Block identifier.
opts = {
  relinquish_ip_block: BmcApi::RelinquishIpBlock.new # RelinquishIpBlock | 
}

begin
  # Unassign IP Block from Server.
  result = api_instance.servers_server_id_ip_blocks_ip_block_id_delete(server_id, ip_block_id, opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_ip_blocks_ip_block_id_delete: #{e}"
end
```

#### Using the servers_server_id_ip_blocks_ip_block_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> servers_server_id_ip_blocks_ip_block_id_delete_with_http_info(server_id, ip_block_id, opts)

```ruby
begin
  # Unassign IP Block from Server.
  data, status_code, headers = api_instance.servers_server_id_ip_blocks_ip_block_id_delete_with_http_info(server_id, ip_block_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_ip_blocks_ip_block_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |
| **ip_block_id** | **String** | The IP Block identifier. |  |
| **relinquish_ip_block** | [**RelinquishIpBlock**](RelinquishIpBlock.md) |  | [optional] |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_ip_blocks_post

> <ServerIpBlock> servers_server_id_ip_blocks_post(server_id, opts)

Assign IP Block to Server.

Adds an IP block to this server. <b>No actual configuration is performed on the operating system.</b> BMC configures exclusively the networking devices in the datacenter infrastructure. You are expected to perform network configuration changes in the operating system of this server.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
server_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The server's ID.
opts = {
  server_ip_block: BmcApi::ServerIpBlock.new({id: '60473a6115e34466c9f8f083'}) # ServerIpBlock | 
}

begin
  # Assign IP Block to Server.
  result = api_instance.servers_server_id_ip_blocks_post(server_id, opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_ip_blocks_post: #{e}"
end
```

#### Using the servers_server_id_ip_blocks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerIpBlock>, Integer, Hash)> servers_server_id_ip_blocks_post_with_http_info(server_id, opts)

```ruby
begin
  # Assign IP Block to Server.
  data, status_code, headers = api_instance.servers_server_id_ip_blocks_post_with_http_info(server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerIpBlock>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_ip_blocks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |
| **server_ip_block** | [**ServerIpBlock**](ServerIpBlock.md) |  | [optional] |

### Return type

[**ServerIpBlock**](ServerIpBlock.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_patch

> <Server> servers_server_id_patch(server_id, opts)

Patch a Server.

Any changes to the hostname or description using the BMC API will reflect solely in the BMC API and portal. The changes are intended to keep the BMC data up to date with your server. We do not have access to your server's settings. Local changes to the server's hostname will not be reflected in the API or portal.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
server_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The server's ID.
opts = {
  server_patch: BmcApi::ServerPatch.new # ServerPatch | 
}

begin
  # Patch a Server.
  result = api_instance.servers_server_id_patch(server_id, opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_patch: #{e}"
end
```

#### Using the servers_server_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_server_id_patch_with_http_info(server_id, opts)

```ruby
begin
  # Patch a Server.
  data, status_code, headers = api_instance.servers_server_id_patch_with_http_info(server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |
| **server_patch** | [**ServerPatch**](ServerPatch.md) |  | [optional] |

### Return type

[**Server**](Server.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_private_networks_post

> <ServerPrivateNetwork> servers_server_id_private_networks_post(server_id, opts)

Adds the server to a private network.

Adds the server to a private network.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
server_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The server's ID.
opts = {
  server_private_network: BmcApi::ServerPrivateNetwork.new({id: '603f3b2cfcaf050643b89a4b'}) # ServerPrivateNetwork | 
}

begin
  # Adds the server to a private network.
  result = api_instance.servers_server_id_private_networks_post(server_id, opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_private_networks_post: #{e}"
end
```

#### Using the servers_server_id_private_networks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerPrivateNetwork>, Integer, Hash)> servers_server_id_private_networks_post_with_http_info(server_id, opts)

```ruby
begin
  # Adds the server to a private network.
  data, status_code, headers = api_instance.servers_server_id_private_networks_post_with_http_info(server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerPrivateNetwork>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_private_networks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |
| **server_private_network** | [**ServerPrivateNetwork**](ServerPrivateNetwork.md) |  | [optional] |

### Return type

[**ServerPrivateNetwork**](ServerPrivateNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_tags_put

> <Server> servers_server_id_tags_put(server_id, opts)

Set server tags.

Set tags for server.

### Examples

```ruby
require 'time'
require 'pnap_bmc_api'
# setup authorization
BmcApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = BmcApi::ServersApi.new
server_id = 'e6afba51-7de8-4080-83ab-0f915570659c' # String | The server's ID.
opts = {
  tag_assignment_request: [BmcApi::TagAssignmentRequest.new({name: 'Environment'})] # Array<TagAssignmentRequest> | 
}

begin
  # Set server tags.
  result = api_instance.servers_server_id_tags_put(server_id, opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_tags_put: #{e}"
end
```

#### Using the servers_server_id_tags_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_server_id_tags_put_with_http_info(server_id, opts)

```ruby
begin
  # Set server tags.
  data, status_code, headers = api_instance.servers_server_id_tags_put_with_http_info(server_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_tags_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |
| **tag_assignment_request** | [**Array&lt;TagAssignmentRequest&gt;**](TagAssignmentRequest.md) |  | [optional] |

### Return type

[**Server**](Server.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

