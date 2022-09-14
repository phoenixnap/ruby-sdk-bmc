# NetworkStorageApi::StorageNetwork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Storage network ID. | [optional] |
| **name** | **String** | Storage network friendly name. | [optional] |
| **description** | **String** | Storage network description. | [optional] |
| **status** | [**Status**](Status.md) |  | [optional] |
| **location** | **String** | Location of storage network. Currently this field should be set to &#x60;PHX&#x60; or &#x60;ASH&#x60;. | [optional] |
| **network_id** | **String** | Id of network the storage belongs to. | [optional] |
| **ips** | **Array&lt;String&gt;** | IP of the storage network. | [optional] |
| **created_on** | **Time** | Date and time when this storage network was created. | [optional] |
| **volumes** | [**Array&lt;Volume&gt;**](Volume.md) | Volume for a storage network. | [optional] |

## Example

```ruby
require 'pnap_network_storage_api'

instance = NetworkStorageApi::StorageNetwork.new(
  id: 603f3b2cfcaf050643b89a4b,
  name: My storage network,
  description: My storage network description,
  status: null,
  location: PHX,
  network_id: 603f3b2cfcaf050643b89a4b,
  ips: [&quot;100.64.0.1&quot;,&quot;100.64.0.2&quot;],
  created_on: 2021-03-13T20:24:32.491Z,
  volumes: null
)
```

