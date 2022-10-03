# RancherApi::ClusterConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | Shared secret used to join a server or agent to a cluster. | [optional] |
| **tls_san** | **String** | This maps to ranchers &#x60;tls-san&#x60;. Add additional hostname or IP as a Subject Alternative Name in the TLS cert. | [optional] |
| **etcd_snapshot_schedule_cron** | **String** | This maps to ranchers &#x60;etcd-snapshot-schedule-cron&#x60;. Snapshot interval time in cron spec. eg. every 5 hours ‘0 */5 * * *’. Default: at 12 am/pm | [optional][default to &#39;0 0,12 * * *&#39;] |
| **etcd_snapshot_retention** | **Integer** | This maps to ranchers &#x60;etcd-snapshot-retention&#x60;. Number of snapshots to retain. | [optional][default to 5] |
| **node_taint** | **String** | This maps to ranchers &#x60;node-taint&#x60;. Registering kubelet with set of taints. By default, server nodes will be schedulable and thus your workloads can get launched on them. If you wish to have a dedicated control plane where no user workloads will run, you can use taints. | [optional] |
| **cluster_domain** | **String** | This maps to ranchers &#x60;cluster-domain&#x60;. Cluster Domain. | [optional] |
| **certificates** | [**RancherClusterConfigCertificates**](RancherClusterConfigCertificates.md) |  | [optional] |

## Example

```ruby
require 'pnap_rancher_api'

instance = RancherApi::ClusterConfiguration.new(
  token: gS7SnDnY5st0ryJxMXA7,
  tls_san: mydomain.com,
  etcd_snapshot_schedule_cron: 0 0,12 * * *,
  etcd_snapshot_retention: 5,
  node_taint: CriticalAddonsOnly&#x3D;true:NoExecute,
  cluster_domain: cluster.local,
  certificates: null
)
```

