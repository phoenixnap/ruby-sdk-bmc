# IpApi::IpBlock

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | IP Block identifier. | [optional] |
| **location** | **String** | IP Block location ID. Currently this field should be set to &#x60;PHX&#x60;, &#x60;ASH&#x60;, &#x60;SGP&#x60;, &#x60;NLD&#x60;, &#x60;CHI&#x60;, &#x60;SEA&#x60; or &#x60;AUS&#x60;. | [optional] |
| **cidr_block_size** | **String** | CIDR IP Block Size. Currently this field should be set to either &#x60;/31&#x60;, &#x60;/30&#x60;, &#x60;/29&#x60;, &#x60;/28&#x60;, &#x60;/27&#x60;, &#x60;/26&#x60;, &#x60;/25&#x60;, &#x60;/24&#x60;, &#x60;/23&#x60; or &#x60;/22&#x60;. | [optional] |
| **cidr** | **String** | The IP Block in CIDR notation. | [optional] |
| **ip_version** | **String** | The IP Version of the block. | [optional] |
| **status** | **String** | The status of the IP Block. Can have one of the following values: &#x60;creating&#x60;, &#x60;subnetted&#x60;, &#x60;assigning&#x60; , &#x60;error assigning&#x60; , &#x60;assigned&#x60; , &#x60;unassigning&#x60; , &#x60;error unassigning&#x60; or &#x60;unassigned&#x60;. | [optional] |
| **parent_ip_block_allocation_id** | **String** | IP Block parent identifier. If present, this block is subnetted from the parent IP Block. | [optional] |
| **assigned_resource_id** | **String** | ID of the resource assigned to the IP Block. | [optional] |
| **assigned_resource_type** | **String** | Type of the resource assigned to the IP Block. | [optional] |
| **description** | **String** | The description of the IP Block. | [optional] |
| **tags** | [**Array&lt;TagAssignment&gt;**](TagAssignment.md) | The tags assigned if any. | [optional] |
| **is_system_managed** | **Boolean** | True if the IP block is a &#x60;system managed&#x60; block. | [optional] |
| **is_bring_your_own** | **Boolean** | True if the IP block is a &#x60;bring your own&#x60; block. | [optional] |
| **created_on** | **Time** | Date and time when the IP block was created. | [optional] |

## Example

```ruby
require 'pnap_ip_api'

instance = IpApi::IpBlock.new(
  id: 6047127fed34ecc3ba8402d2,
  location: PHX,
  cidr_block_size: /30,
  cidr: 1.1.1.0/31,
  ip_version: V4,
  status: unassigned,
  parent_ip_block_allocation_id: 5edf1c9b4212930ac543d999,
  assigned_resource_id: 6047127fed34ecc3ba8402d2,
  assigned_resource_type: server,
  description: IP Block #1 used for publicly accessing server #1.,
  tags: [{&quot;name&quot;:&quot;stage&quot;,&quot;value&quot;:&quot;beta&quot;},{&quot;name&quot;:&quot;group&quot;,&quot;value&quot;:&quot;discounted&quot;}],
  is_system_managed: false,
  is_bring_your_own: false,
  created_on: 2021-03-13T20:24:32.491Z
)
```

