# IpApi::IpBlockCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | IP Block location ID. Currently this field should be set to &#x60;PHX&#x60;, &#x60;ASH&#x60;, &#x60;SGP&#x60;, &#x60;NLD&#x60;, &#x60;CHI&#x60;, &#x60;SEA&#x60; or &#x60;AUS&#x60;. |  |
| **cidr_block_size** | **String** | CIDR IP Block Size. Currently this field should be set to either &#x60;/31&#x60;, &#x60;/30&#x60;, &#x60;/29&#x60; or &#x60;/28&#x60;. For a larger Block Size contact support. |  |
| **description** | **String** | The description of the IP Block. | [optional] |
| **tags** | [**Array&lt;TagAssignmentRequest&gt;**](TagAssignmentRequest.md) | Tags to set to the ip-block. To create a new tag or list all the existing tags that you can use, refer to [Tags API](https://developers.phoenixnap.com/docs/tags/1/overview). | [optional] |

## Example

```ruby
require 'pnap_ip_api'

instance = IpApi::IpBlockCreate.new(
  location: PHX,
  cidr_block_size: /30,
  description: IP Block #1 used for publicly accessing server #1.,
  tags: [{&quot;name&quot;:&quot;stage&quot;,&quot;value&quot;:&quot;beta&quot;},{&quot;name&quot;:&quot;group&quot;,&quot;value&quot;:&quot;discounted&quot;}]
)
```

