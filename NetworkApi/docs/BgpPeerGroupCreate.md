# NetworkApi::BgpPeerGroupCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | The BGP Peer Group location. Can have one of the following values: &#x60;PHX&#x60;, &#x60;ASH&#x60;, &#x60;SGP&#x60;, &#x60;NLD&#x60;, &#x60;CHI&#x60;, &#x60;SEA&#x60; and &#x60;AUS&#x60;. |  |
| **asn** | **Integer** | The BGP Peer Group ASN. | [default to 65401] |
| **password** | **String** | The BGP Peer Group password. | [optional] |
| **advertised_routes** | **String** | The Advertised routes for the BGP Peer Group. Can have one of the following values: &#x60;DEFAULT&#x60; and &#x60;NONE&#x60;. | [default to &#39;NONE&#39;] |

## Example

```ruby
require 'pnap_network_api'

instance = NetworkApi::BgpPeerGroupCreate.new(
  location: ASH,
  asn: 65401,
  password: E!73423ghhjfge45,
  advertised_routes: DEFAULT
)
```

