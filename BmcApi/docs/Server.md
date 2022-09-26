# BmcApi::Server

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the server. |  |
| **status** | **String** | The status of the server. |  |
| **hostname** | **String** | Hostname of server. |  |
| **description** | **String** | Description of server. | [optional] |
| **os** | **String** | The server’s OS ID used when the server was created. Currently this field should be set to either &#x60;ubuntu/bionic&#x60;, &#x60;ubuntu/focal&#x60;, &#x60;centos/centos7&#x60;, &#x60;centos/centos8&#x60;, &#x60;windows/srv2019std&#x60;, &#x60;windows/srv2019dc&#x60;, &#x60;esxi/esxi70u2&#x60;, &#x60;debian/bullseye&#x60; or &#x60;proxmox/bullseye&#x60;. |  |
| **type** | **String** | Server type ID. Cannot be changed once a server is created. Currently this field should be set to either &#x60;s0.d1.small&#x60;, &#x60;s0.d1.medium&#x60;, &#x60;s1.c1.small&#x60;, &#x60;s1.c1.medium&#x60;, &#x60;s1.c2.medium&#x60;, &#x60;s1.c2.large&#x60;, &#x60;s1.e1.small&#x60;, &#x60;s1.e1.medium&#x60;, &#x60;s1.e1.large&#x60;, &#x60;s2.c1.small&#x60;, &#x60;s2.c1.medium&#x60;, &#x60;s2.c1.large&#x60;, &#x60;s2.c2.small&#x60;, &#x60;s2.c2.medium&#x60;, &#x60;s2.c2.large&#x60;, &#x60;d1.c1.small&#x60;, &#x60;d1.c2.small&#x60;, &#x60;d1.c3.small&#x60;, &#x60;d1.c4.small&#x60;, &#x60;d1.c1.medium&#x60;, &#x60;d1.c2.medium&#x60;, &#x60;d1.c3.medium&#x60;, &#x60;d1.c4.medium&#x60;, &#x60;d1.c1.large&#x60;, &#x60;d1.c2.large&#x60;, &#x60;d1.c3.large&#x60;, &#x60;d1.c4.large&#x60;, &#x60;d1.m1.medium&#x60;, &#x60;d1.m2.medium&#x60;, &#x60;d1.m3.medium&#x60;, &#x60;d1.m4.medium&#x60;, &#x60;d2.c1.medium&#x60;, &#x60;d2.c2.medium&#x60;, &#x60;d2.c3.medium&#x60;, &#x60;d2.c4.medium&#x60;, &#x60;d2.c5.medium&#x60;, &#x60;d2.c1.large&#x60;, &#x60;d2.c2.large&#x60;, &#x60;d2.c3.large&#x60;, &#x60;d2.c4.large&#x60;, &#x60;d2.c5.large&#x60;, &#x60;d2.m1.medium&#x60;, &#x60;d2.m1.large&#x60;, &#x60;d2.m2.medium&#x60;, &#x60;d2.m2.large&#x60;, &#x60;d2.m2.xlarge&#x60; or &#x60;d2.c4.storage.pliops1&#x60;. |  |
| **location** | **String** | Server location ID. Cannot be changed once a server is created. Currently this field should be set to &#x60;PHX&#x60;, &#x60;ASH&#x60;, &#x60;SGP&#x60;, &#x60;NLD&#x60;, &#x60;CHI&#x60;, &#x60;SEA&#x60; or &#x60;AUS&#x60;. |  |
| **cpu** | **String** | A description of the machine CPU. |  |
| **cpu_count** | **Integer** | The number of CPUs available in the system. |  |
| **cores_per_cpu** | **Integer** | The number of physical cores present on each CPU. |  |
| **cpu_frequency** | **Float** | The CPU frequency in GHz. |  |
| **ram** | **String** | A description of the machine RAM. |  |
| **storage** | **String** | A description of the machine storage. |  |
| **private_ip_addresses** | **Array&lt;String&gt;** | Private IP addresses assigned to server. |  |
| **public_ip_addresses** | **Array&lt;String&gt;** | Public IP addresses assigned to server. | [optional] |
| **reservation_id** | **String** | The reservation reference id if any. | [optional] |
| **pricing_model** | **String** | The pricing model this server is being billed. Currently this field should be set to &#x60;HOURLY&#x60;, &#x60;ONE_MONTH_RESERVATION&#x60;, &#x60;TWELVE_MONTHS_RESERVATION&#x60;, &#x60;TWENTY_FOUR_MONTHS_RESERVATION&#x60; or &#x60;THIRTY_SIX_MONTHS_RESERVATION&#x60;. | [default to &#39;HOURLY&#39;] |
| **password** | **String** | Password set for user Admin on Windows server or user root on ESXi server which will only be returned in response to provisioning a server. | [optional] |
| **network_type** | **String** | The type of network configuration for this server. Currently this field should be set to &#x60;PUBLIC_AND_PRIVATE&#x60; or &#x60;PRIVATE_ONLY&#x60;. | [optional][default to &#39;PUBLIC_AND_PRIVATE&#39;] |
| **cluster_id** | **String** | The cluster reference id if any. | [optional] |
| **tags** | [**Array&lt;TagAssignment&gt;**](TagAssignment.md) | The tags assigned if any. | [optional] |
| **provisioned_on** | **Time** | Date and time when server was provisioned. | [optional] |
| **os_configuration** | [**OsConfiguration**](OsConfiguration.md) |  | [optional] |
| **network_configuration** | [**NetworkConfiguration**](NetworkConfiguration.md) |  |  |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::Server.new(
  id: x78sdkjds879sd7cx8,
  status: creating,
  hostname: my-server-1,
  description: Server #1 used for computing.,
  os: ubuntu/bionic,
  type: s1.c1.small,
  location: PHX,
  cpu: E-2276G,
  cpu_count: 2,
  cores_per_cpu: 28,
  cpu_frequency: 3.6,
  ram: 64GB RAM,
  storage: 1x 960GB NVMe,
  private_ip_addresses: [&quot;172.16.0.1&quot;],
  public_ip_addresses: [&quot;182.16.0.1&quot;,&quot;183.16.0.1&quot;],
  reservation_id: x78sdkjds879sd7cx8,
  pricing_model: HOURLY,
  password: MyP@ssw0rd_01,
  network_type: PUBLIC_AND_PRIVATE,
  cluster_id: x78sdkjds879sd7cx8,
  tags: null,
  provisioned_on: 2021-03-13T20:24:32.491Z,
  os_configuration: null,
  network_configuration: null
)
```

