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
| [**servers_server_id_actions_provision_post**](ServersApi.md#servers_server_id_actions_provision_post) | **POST** /servers/{serverId}/actions/provision | Provision server. |
| [**servers_server_id_actions_reboot_post**](ServersApi.md#servers_server_id_actions_reboot_post) | **POST** /servers/{serverId}/actions/reboot | Reboot server. |
| [**servers_server_id_actions_reserve_post**](ServersApi.md#servers_server_id_actions_reserve_post) | **POST** /servers/{serverId}/actions/reserve | Reserve server. |
| [**servers_server_id_actions_reset_post**](ServersApi.md#servers_server_id_actions_reset_post) | **POST** /servers/{serverId}/actions/reset | Reset server. |
| [**servers_server_id_actions_shutdown_post**](ServersApi.md#servers_server_id_actions_shutdown_post) | **POST** /servers/{serverId}/actions/shutdown | Shutdown server. |
| [**servers_server_id_actions_transfer_reservation**](ServersApi.md#servers_server_id_actions_transfer_reservation) | **POST** /servers/{serverId}/actions/transfer-reservation | Transfer server reservation. |
| [**servers_server_id_delete**](ServersApi.md#servers_server_id_delete) | **DELETE** /servers/{serverId} | Delete server. |
| [**servers_server_id_get**](ServersApi.md#servers_server_id_get) | **GET** /servers/{serverId} | Get server. |
| [**servers_server_id_ip_blocks_ip_block_id_delete**](ServersApi.md#servers_server_id_ip_blocks_ip_block_id_delete) | **DELETE** /servers/{serverId}/network-configuration/ip-block-configurations/ip-blocks/{ipBlockId} | Unassign IP Block from Server. |
| [**servers_server_id_ip_blocks_post**](ServersApi.md#servers_server_id_ip_blocks_post) | **POST** /servers/{serverId}/network-configuration/ip-block-configurations/ip-blocks | Assign IP Block to Server. |
| [**servers_server_id_patch**](ServersApi.md#servers_server_id_patch) | **PATCH** /servers/{serverId} | Patch a Server. |
| [**servers_server_id_private_networks_patch**](ServersApi.md#servers_server_id_private_networks_patch) | **PATCH** /servers/{serverId}/network-configuration/private-network-configuration/private-networks/{privateNetworkId} | Updates the server&#39;s private network&#39;s IP addresses |
| [**servers_server_id_private_networks_post**](ServersApi.md#servers_server_id_private_networks_post) | **POST** /servers/{serverId}/network-configuration/private-network-configuration/private-networks | Adds the server to a private network. |
| [**servers_server_id_public_networks_delete**](ServersApi.md#servers_server_id_public_networks_delete) | **DELETE** /servers/{serverId}/network-configuration/public-network-configuration/public-networks/{publicNetworkId} | Removes the server from the Public Network |
| [**servers_server_id_public_networks_patch**](ServersApi.md#servers_server_id_public_networks_patch) | **PATCH** /servers/{serverId}/network-configuration/public-network-configuration/public-networks/{publicNetworkId} | Updates the server&#39;s public network&#39;s IP addresses. |
| [**servers_server_id_public_networks_post**](ServersApi.md#servers_server_id_public_networks_post) | **POST** /servers/{serverId}/network-configuration/public-network-configuration/public-networks | Adds the server to a Public Network. |
| [**servers_server_id_tags_put**](ServersApi.md#servers_server_id_tags_put) | **PUT** /servers/{serverId}/tags | Overwrite tags assigned for Server. |


## delete_private_network

> String delete_private_network(server_id, private_network_id)

Removes the server from private network.

Removes the server from private network. <b>No actual configuration is performed on the operating system.</b> BMC configures exclusively the networking devices in the datacenter infrastructure. Manual network configuration changes in the operating system of this server are required. <b>This is an advanced network action that can make your server completely unavailable over any network. Make sure this server is reachable over remote console for guaranteed access in case of misconfiguration.</b>

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.
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

> <Server> servers_post(server_create, opts)

Create new server.

Create (request) a new server for the account. Server DNS will be configured to access Google's public DNS at 8.8.8.8 . Note that the product availability API can be used prior to doing the provision request. Refer to https://developers.phoenixnap.com/docs/bmc-billing/1/routes/product-availability/get.

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
server_create = BmcApi::ServerCreate.new({hostname: 'my-server-1', os: 'ubuntu/bionic', type: 's1.c1.small', location: 'PHX'}) # ServerCreate | 
opts = {
  force: true # Boolean | Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups.
}

begin
  # Create new server.
  result = api_instance.servers_post(server_create, opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_post: #{e}"
end
```

#### Using the servers_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_post_with_http_info(server_create, opts)

```ruby
begin
  # Create new server.
  data, status_code, headers = api_instance.servers_post_with_http_info(server_create, opts)
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
| **server_create** | [**ServerCreate**](ServerCreate.md) |  |  |
| **force** | **Boolean** | Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups. | [optional][default to false] |

### Return type

[**Server**](Server.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_actions_deprovision_post

> String servers_server_id_actions_deprovision_post(server_id, relinquish_ip_block)

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.
relinquish_ip_block = BmcApi::RelinquishIpBlock.new # RelinquishIpBlock | 

begin
  # Deprovision a server.
  result = api_instance.servers_server_id_actions_deprovision_post(server_id, relinquish_ip_block)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_deprovision_post: #{e}"
end
```

#### Using the servers_server_id_actions_deprovision_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> servers_server_id_actions_deprovision_post_with_http_info(server_id, relinquish_ip_block)

```ruby
begin
  # Deprovision a server.
  data, status_code, headers = api_instance.servers_server_id_actions_deprovision_post_with_http_info(server_id, relinquish_ip_block)
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
| **relinquish_ip_block** | [**RelinquishIpBlock**](RelinquishIpBlock.md) |  |  |

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.

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


## servers_server_id_actions_provision_post

> <Server> servers_server_id_actions_provision_post(server_id, server_provision, opts)

Provision server.

Provision reserved server. Server DNS will be configured to access Google's public DNS at 8.8.8.8.

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.
server_provision = BmcApi::ServerProvision.new({hostname: 'my-server-1', os: 'ubuntu/bionic'}) # ServerProvision | 
opts = {
  force: true # Boolean | Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups.
}

begin
  # Provision server.
  result = api_instance.servers_server_id_actions_provision_post(server_id, server_provision, opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_provision_post: #{e}"
end
```

#### Using the servers_server_id_actions_provision_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_server_id_actions_provision_post_with_http_info(server_id, server_provision, opts)

```ruby
begin
  # Provision server.
  data, status_code, headers = api_instance.servers_server_id_actions_provision_post_with_http_info(server_id, server_provision, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_provision_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |
| **server_provision** | [**ServerProvision**](ServerProvision.md) |  |  |
| **force** | **Boolean** | Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups. | [optional][default to false] |

### Return type

[**Server**](Server.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.

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

> <Server> servers_server_id_actions_reserve_post(server_id, server_reserve)

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.
server_reserve = BmcApi::ServerReserve.new({pricing_model: 'ONE_MONTH_RESERVATION'}) # ServerReserve | 

begin
  # Reserve server.
  result = api_instance.servers_server_id_actions_reserve_post(server_id, server_reserve)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_reserve_post: #{e}"
end
```

#### Using the servers_server_id_actions_reserve_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_server_id_actions_reserve_post_with_http_info(server_id, server_reserve)

```ruby
begin
  # Reserve server.
  data, status_code, headers = api_instance.servers_server_id_actions_reserve_post_with_http_info(server_id, server_reserve)
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
| **server_reserve** | [**ServerReserve**](ServerReserve.md) |  |  |

### Return type

[**Server**](Server.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_actions_reset_post

> <ResetResult> servers_server_id_actions_reset_post(server_id, server_reset)

Reset server.

Deprecated: Reset specific server. Reset only supports network configurations of type 'private network' or 'IP blocks'. As an alternative, the suggested action is to deprovision the server and provision a new one with the same configuration.

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.
server_reset = BmcApi::ServerReset.new # ServerReset | 

begin
  # Reset server.
  result = api_instance.servers_server_id_actions_reset_post(server_id, server_reset)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_reset_post: #{e}"
end
```

#### Using the servers_server_id_actions_reset_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResetResult>, Integer, Hash)> servers_server_id_actions_reset_post_with_http_info(server_id, server_reset)

```ruby
begin
  # Reset server.
  data, status_code, headers = api_instance.servers_server_id_actions_reset_post_with_http_info(server_id, server_reset)
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
| **server_reset** | [**ServerReset**](ServerReset.md) |  |  |

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.

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


## servers_server_id_actions_transfer_reservation

> <Server> servers_server_id_actions_transfer_reservation(server_id, reservation_transfer_details)

Transfer server reservation.

Transfer server reservation. An active (READY) reservation can be transferred from a server in ERROR or RESERVED status to another HOURLY provisioned server of the same location and type.

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.
reservation_transfer_details = BmcApi::ReservationTransferDetails.new({target_server_id: '54a21648dasda4s9843a17'}) # ReservationTransferDetails | 

begin
  # Transfer server reservation.
  result = api_instance.servers_server_id_actions_transfer_reservation(server_id, reservation_transfer_details)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_transfer_reservation: #{e}"
end
```

#### Using the servers_server_id_actions_transfer_reservation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_server_id_actions_transfer_reservation_with_http_info(server_id, reservation_transfer_details)

```ruby
begin
  # Transfer server reservation.
  data, status_code, headers = api_instance.servers_server_id_actions_transfer_reservation_with_http_info(server_id, reservation_transfer_details)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Server>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_actions_transfer_reservation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |
| **reservation_transfer_details** | [**ReservationTransferDetails**](ReservationTransferDetails.md) |  |  |

### Return type

[**Server**](Server.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.

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

> String servers_server_id_ip_blocks_ip_block_id_delete(server_id, ip_block_id, relinquish_ip_block)

Unassign IP Block from Server.

Removes the IP block from the server. <b>No actual configuration is performed on the operating system.</b> BMC configures exclusively the networking devices in the datacenter infrastructure. Manual network configuration changes in the operating system of this server are required. <b>This is an advanced network action that can make your server completely unavailable over any network. Make sure this server is reachable over remote console for guaranteed access in case of misconfiguration.</b>

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.
ip_block_id = '6047127fed34ecc3ba8402d2' # String | The IP Block identifier.
relinquish_ip_block = BmcApi::RelinquishIpBlock.new # RelinquishIpBlock | 

begin
  # Unassign IP Block from Server.
  result = api_instance.servers_server_id_ip_blocks_ip_block_id_delete(server_id, ip_block_id, relinquish_ip_block)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_ip_blocks_ip_block_id_delete: #{e}"
end
```

#### Using the servers_server_id_ip_blocks_ip_block_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> servers_server_id_ip_blocks_ip_block_id_delete_with_http_info(server_id, ip_block_id, relinquish_ip_block)

```ruby
begin
  # Unassign IP Block from Server.
  data, status_code, headers = api_instance.servers_server_id_ip_blocks_ip_block_id_delete_with_http_info(server_id, ip_block_id, relinquish_ip_block)
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
| **relinquish_ip_block** | [**RelinquishIpBlock**](RelinquishIpBlock.md) |  |  |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_ip_blocks_post

> <ServerIpBlock> servers_server_id_ip_blocks_post(server_id, server_ip_block)

Assign IP Block to Server.

Adds an IP block to this server. <b>No actual configuration is performed on the operating system.</b> BMC configures exclusively the networking devices in the datacenter infrastructure. Manual network configuration changes in the operating system of this server are required.  A server can have at most one IPv4 block and one IPv6 block assigned simultaneously. Assigning IPv6 to server is only supported post-provision. Knowledge base article to help you can be found <a href='https://phoenixnap.com/kb/configure-server-with-public-ip-block#ftoc-heading-2' target='_blank'>here</a>.

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.
server_ip_block = BmcApi::ServerIpBlock.new({id: '60473a6115e34466c9f8f083'}) # ServerIpBlock | 

begin
  # Assign IP Block to Server.
  result = api_instance.servers_server_id_ip_blocks_post(server_id, server_ip_block)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_ip_blocks_post: #{e}"
end
```

#### Using the servers_server_id_ip_blocks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerIpBlock>, Integer, Hash)> servers_server_id_ip_blocks_post_with_http_info(server_id, server_ip_block)

```ruby
begin
  # Assign IP Block to Server.
  data, status_code, headers = api_instance.servers_server_id_ip_blocks_post_with_http_info(server_id, server_ip_block)
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
| **server_ip_block** | [**ServerIpBlock**](ServerIpBlock.md) |  |  |

### Return type

[**ServerIpBlock**](ServerIpBlock.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_patch

> <Server> servers_server_id_patch(server_id, server_patch)

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.
server_patch = BmcApi::ServerPatch.new # ServerPatch | 

begin
  # Patch a Server.
  result = api_instance.servers_server_id_patch(server_id, server_patch)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_patch: #{e}"
end
```

#### Using the servers_server_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_server_id_patch_with_http_info(server_id, server_patch)

```ruby
begin
  # Patch a Server.
  data, status_code, headers = api_instance.servers_server_id_patch_with_http_info(server_id, server_patch)
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
| **server_patch** | [**ServerPatch**](ServerPatch.md) |  |  |

### Return type

[**Server**](Server.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_private_networks_patch

> <ServerPrivateNetwork> servers_server_id_private_networks_patch(server_id, private_network_id, server_network_update, opts)

Updates the server's private network's IP addresses

IP address changes intended to keep the BMC data up to date with server's operating system. We do not have access to the server's operating system and therefore manual configuration is required to apply the changes on the host. Knowledge base article to help you can be found <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#ftoc-heading-6' target='_blank'>here</a>

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.
private_network_id = '603f3b2cfcaf050643b89a4b' # String | The private network identifier.
server_network_update = BmcApi::ServerNetworkUpdate.new # ServerNetworkUpdate | 
opts = {
  force: true # Boolean | Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups.
}

begin
  # Updates the server's private network's IP addresses
  result = api_instance.servers_server_id_private_networks_patch(server_id, private_network_id, server_network_update, opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_private_networks_patch: #{e}"
end
```

#### Using the servers_server_id_private_networks_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerPrivateNetwork>, Integer, Hash)> servers_server_id_private_networks_patch_with_http_info(server_id, private_network_id, server_network_update, opts)

```ruby
begin
  # Updates the server's private network's IP addresses
  data, status_code, headers = api_instance.servers_server_id_private_networks_patch_with_http_info(server_id, private_network_id, server_network_update, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerPrivateNetwork>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_private_networks_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |
| **private_network_id** | **String** | The private network identifier. |  |
| **server_network_update** | [**ServerNetworkUpdate**](ServerNetworkUpdate.md) |  |  |
| **force** | **Boolean** | Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups. | [optional][default to false] |

### Return type

[**ServerPrivateNetwork**](ServerPrivateNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_private_networks_post

> <ServerPrivateNetwork> servers_server_id_private_networks_post(server_id, server_private_network, opts)

Adds the server to a private network.

Adds the server to a private network. <b>No actual configuration is performed on the operating system.</b> BMC configures exclusively the networking devices in the datacenter infrastructure. Manual network configuration changes in the operating system of this server are required. Knowledge base article to help you can be found <a href='https://phoenixnap.com/kb/configure-bmc-server-after-adding-to-network#ftoc-heading-3' target='_blank'>here</a>.

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.
server_private_network = BmcApi::ServerPrivateNetwork.new({id: '603f3b2cfcaf050643b89a4b'}) # ServerPrivateNetwork | 
opts = {
  force: true # Boolean | Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups.
}

begin
  # Adds the server to a private network.
  result = api_instance.servers_server_id_private_networks_post(server_id, server_private_network, opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_private_networks_post: #{e}"
end
```

#### Using the servers_server_id_private_networks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerPrivateNetwork>, Integer, Hash)> servers_server_id_private_networks_post_with_http_info(server_id, server_private_network, opts)

```ruby
begin
  # Adds the server to a private network.
  data, status_code, headers = api_instance.servers_server_id_private_networks_post_with_http_info(server_id, server_private_network, opts)
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
| **server_private_network** | [**ServerPrivateNetwork**](ServerPrivateNetwork.md) |  |  |
| **force** | **Boolean** | Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups. | [optional][default to false] |

### Return type

[**ServerPrivateNetwork**](ServerPrivateNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_public_networks_delete

> String servers_server_id_public_networks_delete(server_id, public_network_id)

Removes the server from the Public Network

Removes the server from the Public Network. <b>No actual configuration is performed on the operating system.</b> BMC configures exclusively the networking devices in the datacenter infrastructure. Manual network configuration changes in the operating system of this server are required. <b>This is an advanced network action that can make your server completely unavailable over any network. Make sure this server is reachable over remote console for guaranteed access in case of misconfiguration.</b>

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.
public_network_id = '603f3b2cfcaf050643b89a4b' # String | The Public Network identifier.

begin
  # Removes the server from the Public Network
  result = api_instance.servers_server_id_public_networks_delete(server_id, public_network_id)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_public_networks_delete: #{e}"
end
```

#### Using the servers_server_id_public_networks_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> servers_server_id_public_networks_delete_with_http_info(server_id, public_network_id)

```ruby
begin
  # Removes the server from the Public Network
  data, status_code, headers = api_instance.servers_server_id_public_networks_delete_with_http_info(server_id, public_network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_public_networks_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |
| **public_network_id** | **String** | The Public Network identifier. |  |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## servers_server_id_public_networks_patch

> <ServerPublicNetwork> servers_server_id_public_networks_patch(server_id, public_network_id, server_network_update, opts)

Updates the server's public network's IP addresses.

IP address changes intended to keep the BMC data up to date with server's operating system. We do not have access to the server's operating system and therefore manual configuration is required to apply the changes on the host. Knowledge base article to help you can be found <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#ftoc-heading-6' target='_blank'>here</a>

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.
public_network_id = '603f3b2cfcaf050643b89a4b' # String | The Public Network identifier.
server_network_update = BmcApi::ServerNetworkUpdate.new # ServerNetworkUpdate | 
opts = {
  force: true # Boolean | Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups.
}

begin
  # Updates the server's public network's IP addresses.
  result = api_instance.servers_server_id_public_networks_patch(server_id, public_network_id, server_network_update, opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_public_networks_patch: #{e}"
end
```

#### Using the servers_server_id_public_networks_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerPublicNetwork>, Integer, Hash)> servers_server_id_public_networks_patch_with_http_info(server_id, public_network_id, server_network_update, opts)

```ruby
begin
  # Updates the server's public network's IP addresses.
  data, status_code, headers = api_instance.servers_server_id_public_networks_patch_with_http_info(server_id, public_network_id, server_network_update, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerPublicNetwork>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_public_networks_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |
| **public_network_id** | **String** | The Public Network identifier. |  |
| **server_network_update** | [**ServerNetworkUpdate**](ServerNetworkUpdate.md) |  |  |
| **force** | **Boolean** | Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups. | [optional][default to false] |

### Return type

[**ServerPublicNetwork**](ServerPublicNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_public_networks_post

> <ServerPublicNetwork> servers_server_id_public_networks_post(server_id, server_public_network, opts)

Adds the server to a Public Network.

Adds the server to a Public Network. <b>No actual configuration is performed on the operating system.</b> BMC configures exclusively the networking devices in the datacenter infrastructure. Manual network configuration changes in the operating system of this server are required. Knowledge base article to help you can be found <a href='https://phoenixnap.com/kb/configure-bmc-server-after-adding-to-network#ftoc-heading-3' target='_blank'>here</a>.

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.
server_public_network = BmcApi::ServerPublicNetwork.new({id: '60473c2509268bc77fd06d29'}) # ServerPublicNetwork | 
opts = {
  force: true # Boolean | Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups.
}

begin
  # Adds the server to a Public Network.
  result = api_instance.servers_server_id_public_networks_post(server_id, server_public_network, opts)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_public_networks_post: #{e}"
end
```

#### Using the servers_server_id_public_networks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerPublicNetwork>, Integer, Hash)> servers_server_id_public_networks_post_with_http_info(server_id, server_public_network, opts)

```ruby
begin
  # Adds the server to a Public Network.
  data, status_code, headers = api_instance.servers_server_id_public_networks_post_with_http_info(server_id, server_public_network, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerPublicNetwork>
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_public_networks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_id** | **String** | The server&#39;s ID. |  |
| **server_public_network** | [**ServerPublicNetwork**](ServerPublicNetwork.md) |  |  |
| **force** | **Boolean** | Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups. | [optional][default to false] |

### Return type

[**ServerPublicNetwork**](ServerPublicNetwork.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## servers_server_id_tags_put

> <Server> servers_server_id_tags_put(server_id, tag_assignment_request)

Overwrite tags assigned for Server.

Overwrites tags assigned for Server and unassigns any tags not part of the request.

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
server_id = '60473a6115e34466c9f8f083' # String | The server's ID.
tag_assignment_request = [BmcApi::TagAssignmentRequest.new({name: 'Environment'})] # Array<TagAssignmentRequest> | 

begin
  # Overwrite tags assigned for Server.
  result = api_instance.servers_server_id_tags_put(server_id, tag_assignment_request)
  p result
rescue BmcApi::ApiError => e
  puts "Error when calling ServersApi->servers_server_id_tags_put: #{e}"
end
```

#### Using the servers_server_id_tags_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Server>, Integer, Hash)> servers_server_id_tags_put_with_http_info(server_id, tag_assignment_request)

```ruby
begin
  # Overwrite tags assigned for Server.
  data, status_code, headers = api_instance.servers_server_id_tags_put_with_http_info(server_id, tag_assignment_request)
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
| **tag_assignment_request** | [**Array&lt;TagAssignmentRequest&gt;**](TagAssignmentRequest.md) |  |  |

### Return type

[**Server**](Server.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

