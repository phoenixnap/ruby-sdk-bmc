# IpApi::IpBlock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | IP Block identifier. |  |
| **location** | **String** | IP Block location ID. Currently this field should be set to &#x60;PHX&#x60;, &#x60;ASH&#x60;, &#x60;SGP&#x60;, &#x60;NLD&#x60;, &#x60;CHI&#x60;, &#x60;SEA&#x60; or &#x60;AUS&#x60;. |  |
| **cidr_block_size** | **String** | CIDR IP Block Size. Currently this field should be set to either &#x60;/31&#x60;, &#x60;/30&#x60;, &#x60;/29&#x60;, &#x60;/28&#x60;, &#x60;/27&#x60;, &#x60;/26&#x60;, &#x60;/25&#x60;, &#x60;/24&#x60;, &#x60;/23&#x60; or &#x60;/22&#x60;. |  |
| **cidr** | **String** | The IP Block in CIDR notation. |  |
| **status** | **String** | The status of the IP Block. |  |
| **assigned_resource_id** | **String** | ID of the resource assigned to the IP Block. | [optional] |
| **assigned_resource_type** | **String** | Type of the resource assigned to the IP Block. | [optional] |
| **description** | **String** | The description of the IP Block. | [optional] |
| **tags** | [**Array&lt;TagAssignment&gt;**](TagAssignment.md) | The tags assigned if any. | [optional] |

## Example

```ruby
require 'pnap_ip_api'

instance = IpApi::IpBlock.new(
  id: 6047127fed34ecc3ba8402d2,
  location: PHX,
  cidr_block_size: /30,
  cidr: 1.1.1.0/31,
  status: unassigned,
  assigned_resource_id: 6047127fed34ecc3ba8402d2,
  assigned_resource_type: server,
  description: IP Block #1 used for publicly accessing server #1.,
  tags: [{&quot;name&quot;:&quot;stage&quot;,&quot;value&quot;:&quot;beta&quot;},{&quot;name&quot;:&quot;group&quot;,&quot;value&quot;:&quot;discounted&quot;}]
)
```

