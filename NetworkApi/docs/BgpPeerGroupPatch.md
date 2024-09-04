# NetworkApi::BgpPeerGroupPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asn** | **Integer** | The BGP Peer Group ASN. | [optional] |
| **password** | **String** | The BGP Peer Group password. | [optional] |
| **advertised_routes** | **String** | The Advertised routes for the BGP Peer Group. Can have one of the following values: &#x60;DEFAULT&#x60; and &#x60;NONE&#x60;. | [optional] |

## Example

```ruby
require 'pnap_network_api'

instance = NetworkApi::BgpPeerGroupPatch.new(
  asn: 65401,
  password: E!73423ghijfge45,
  advertised_routes: DEFAULT
)
```

