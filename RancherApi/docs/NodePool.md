# RancherApi::NodePool

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the node pool. | [optional] |
| **node_count** | **Integer** | Number of configured nodes, currently only node counts of 1 and 3 are possible. | [optional] |
| **server_type** | **String** | Node server type. Cannot be changed once a server is created. Currently this field should be set to either &#x60;s0.d1.small&#x60;, &#x60;s0.d1.medium&#x60;, &#x60;s1.c1.small&#x60;, &#x60;s1.c1.medium&#x60;, &#x60;s1.c2.medium&#x60;, &#x60;s1.c2.large&#x60;, &#x60;s2.c1.small&#x60;, &#x60;s2.c1.medium&#x60;, &#x60;s2.c1.large&#x60;, &#x60;s2.c2.small&#x60;, &#x60;s2.c2.medium&#x60;, &#x60;s2.c2.large&#x60;, &#x60;s1.e1.small&#x60;, &#x60;s1.e1.medium&#x60;, &#x60;s1.e1.large&#x60;. | [optional][default to &#39;s0.d1.small&#39;] |
| **ssh_config** | [**SshConfig**](SshConfig.md) |  | [optional] |
| **nodes** | [**Array&lt;Node&gt;**](Node.md) | (Read-only) The nodes associated with this node pool. | [optional][readonly] |

## Example

```ruby
require 'pnap_rancher_api'

instance = RancherApi::NodePool.new(
  name: rancher-server-node-pool,
  node_count: null,
  server_type: s0.d1.small,
  ssh_config: null,
  nodes: null
)
```

