# BmcApi::Server

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the server. |  |
| **status** | **String** | The status of the server. Can have one of the following values: &#x60;creating&#x60; , &#x60;powered-on&#x60; , &#x60;powered-off&#x60; , &#x60;rebooting&#x60; , &#x60;resetting&#x60; , &#x60;deleting&#x60; , &#x60;reserved&#x60; , &#x60;error&#x60; or &#x60;reinstating&#x60;. |  |
| **hostname** | **String** | Hostname of server. |  |
| **description** | **String** | Description of server. | [optional] |
| **os** | **String** | The server’s OS ID used when the server was created. Currently this field should be set to either &#x60;ubuntu/bionic&#x60;, &#x60;ubuntu/focal&#x60;, &#x60;ubuntu/jammy&#x60;, &#x60;ubuntu/jammy+pytorch&#x60;, &#x60;ubuntu/noble&#x60;, &#x60;centos/centos7&#x60;, &#x60;centos/centos8&#x60;, &#x60;windows/srv2019std&#x60;, &#x60;windows/srv2019dc&#x60;, &#x60;windows/srv2022std&#x60;, &#x60;windows/srv2022dc&#x60;, &#x60;windows/srv2025std&#x60;, &#x60;windows/srv2025dc&#x60;, &#x60;esxi/esxi70&#x60;, &#x60;esxi/esxi80&#x60;, &#x60;almalinux/almalinux8&#x60;, &#x60;rockylinux/rockylinux8&#x60;, &#x60;almalinux/almalinux9&#x60;, &#x60;rockylinux/rockylinux9&#x60;, &#x60;virtuozzo/virtuozzo7&#x60;, &#x60;oraclelinux/oraclelinux9&#x60;, &#x60;debian/bullseye&#x60;, &#x60;debian/bookworm&#x60;, &#x60;proxmox/bullseye&#x60;, &#x60;proxmox/proxmox8&#x60;, &#x60;netris/controller&#x60;, &#x60;netris/softgate_1g&#x60;, &#x60;netris/softgate_10g&#x60; or &#x60;netris/softgate_25g&#x60;. | [optional] |
| **type** | **String** | Server type ID. Cannot be changed once a server is created. Currently this field should be set to either &#x60;s0.d1.small&#x60;, &#x60;s0.d1.medium&#x60;, &#x60;s1.c1.small&#x60;, &#x60;s1.c1.medium&#x60;, &#x60;s1.c2.medium&#x60;, &#x60;s1.c2.large&#x60;, &#x60;s1.e1.small&#x60;, &#x60;s1.e1.medium&#x60;, &#x60;s1.e1.large&#x60;, &#x60;s2.c1.small&#x60;, &#x60;s2.c1.medium&#x60;, &#x60;s2.c1.large&#x60;, &#x60;s2.c2.small&#x60;, &#x60;s2.c2.medium&#x60;, &#x60;s2.c2.large&#x60;, &#x60;d1.c4.small&#x60;, &#x60;d1.c4.medium&#x60;, &#x60;d1.c4.large&#x60;, &#x60;d1.m4.medium&#x60;, &#x60;d2.c1.medium&#x60;, &#x60;d2.c2.medium&#x60;, &#x60;d2.c3.medium&#x60;, &#x60;d2.c4.medium&#x60;, &#x60;d2.c5.medium&#x60;, &#x60;d2.c1.large&#x60;, &#x60;d2.c2.large&#x60;, &#x60;d2.c3.large&#x60;, &#x60;d2.c4.large&#x60;, &#x60;d2.c5.large&#x60;, &#x60;d2.m1.xlarge&#x60;, &#x60;d2.m2.xxlarge&#x60;, &#x60;d2.m3.xlarge&#x60;, &#x60;d2.m4.xlarge&#x60;, &#x60;d2.m5.xlarge&#x60;, &#x60;d2.c4.db1.pliops1&#x60;, &#x60;d3.m4.xlarge&#x60;, &#x60;d3.m5.xlarge&#x60;, &#x60;d3.m6.xlarge&#x60;, &#x60;a1.c5.large&#x60;, &#x60;a1.c5.xlarge&#x60;, &#x60;d3.s5.xlarge&#x60;, &#x60;d3.m4.xxlarge&#x60;, &#x60;d3.m5.xxlarge&#x60;,  &#x60;d3.m6.xxlarge&#x60;, &#x60;s3.c3.medium&#x60;, &#x60;s3.c3.large&#x60;, &#x60;d3.c4.medium&#x60;, &#x60;d3.c5.medium&#x60;, &#x60;d3.c6.medium&#x60;, &#x60;d3.c1.large&#x60;, &#x60;d3.c2.large&#x60;, &#x60;d3.c3.large&#x60;, &#x60;d3.m1.xlarge&#x60;, &#x60;d3.m2.xlarge&#x60;, &#x60;d3.m3.xlarge&#x60;, &#x60;d3.g2.c1.xlarge&#x60;, &#x60;d3.g2.c2.xlarge&#x60;, &#x60;d3.g2.c3.xlarge&#x60;, &#x60;d3.g3.c2.medium&#x60;, &#x60;s4.x6.c6.large&#x60;, &#x60;s4.x6.m6.xlarge&#x60;, &#x60;s5.x6.c3.medium&#x60;, &#x60;s5.x6.c3.large&#x60;, &#x60;s5.x6.c8.medium&#x60;, &#x60;s5.x6.c9.medium&#x60;, &#x60;s5.x6.c8.large&#x60;, &#x60;s5.x6.c9.large&#x60;, &#x60;s5.x6.m8.xlarge&#x60; or &#x60;s5.x6.m9.xlarge&#x60;. |  |
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
| **password** | **String** | Auto-generated password set for user &#x60;Admin&#x60; on Windows server, user &#x60;root&#x60; on ESXi servers, user &#x60;root&#x60; on Proxmox server and user &#x60;netris&#x60; on Netris servers.&lt;br&gt; The password is not stored and therefore will only be returned in response to provisioning a server. Copy and save it for future reference. | [optional] |
| **network_type** | **String** | The type of network configuration for this server. Currently this field should be set to &#x60;PUBLIC_AND_PRIVATE&#x60;, &#x60;PRIVATE_ONLY&#x60;, &#x60;PUBLIC_ONLY&#x60; or &#x60;NONE&#x60;. | [optional][default to &#39;PUBLIC_AND_PRIVATE&#39;] |
| **cluster_id** | **String** | The cluster reference id if any. | [optional] |
| **tags** | [**Array&lt;TagAssignment&gt;**](TagAssignment.md) | The tags assigned if any. | [optional] |
| **provisioned_on** | **Time** | Date and time when server was provisioned. | [optional] |
| **os_configuration** | [**OsConfiguration**](OsConfiguration.md) |  | [optional] |
| **network_configuration** | [**NetworkConfiguration**](NetworkConfiguration.md) |  |  |
| **storage_configuration** | [**StorageConfiguration**](StorageConfiguration.md) |  |  |
| **gpu_configuration** | [**GpuConfiguration**](GpuConfiguration.md) |  | [optional] |
| **superseded_by** | **String** | Unique identifier of the server to which the reservation has been transferred. | [optional] |
| **supersedes** | **String** | Unique identifier of the server from which the reservation has been transferred. | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::Server.new(
  id: 651bf71fbde0c93e102ab180,
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
  reservation_id: fc8bd49a-59cc-4538-a806-5e46228408ec,
  pricing_model: HOURLY,
  password: MyP@ssw0rd_01,
  network_type: PUBLIC_AND_PRIVATE,
  cluster_id: 65030122f253707f7d196bed,
  tags: null,
  provisioned_on: 2021-03-13T20:24:32.491Z,
  os_configuration: null,
  network_configuration: null,
  storage_configuration: null,
  gpu_configuration: null,
  superseded_by: 64a539b8d9c2c9ba8424ca31,
  supersedes: 76915b5c85121d411f26e92f
)
```

