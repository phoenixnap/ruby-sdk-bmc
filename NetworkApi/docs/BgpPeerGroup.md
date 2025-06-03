# NetworkApi::BgpPeerGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the BGP Peer Group. |  |
| **status** | **String** | The BGP Peer Group status. Can have one of the following values: &#x60;PENDING&#x60;, &#x60;ON_HOLD&#x60;, &#x60;BUSY&#x60;, &#x60;READY&#x60;, &#x60;ERROR&#x60;, &#x60;PENDING_DELETION&#x60; and &#x60;DELETING&#x60;. |  |
| **location** | **String** | The BGP Peer Group location. Can have one of the following values: &#x60;PHX&#x60;, &#x60;ASH&#x60;, &#x60;SGP&#x60;, &#x60;NLD&#x60;, &#x60;CHI&#x60;, &#x60;SEA&#x60; and &#x60;AUS&#x60;. |  |
| **ipv4_prefixes** | [**Array&lt;BgpIPv4Prefix&gt;**](BgpIPv4Prefix.md) | The List of the BGP Peer Group IPv4 prefixes. Deprecated in favour of generic ipPrefixes. |  |
| **ip_prefixes** | [**Array&lt;BgpIpPrefix&gt;**](BgpIpPrefix.md) | The List of the BGP Peer Group IP prefixes. |  |
| **target_asn_details** | [**AsnDetails**](AsnDetails.md) |  |  |
| **active_asn_details** | [**AsnDetails**](AsnDetails.md) |  | [optional] |
| **password** | **String** | The BGP Peer Group password. |  |
| **advertised_routes** | **String** | The Advertised routes for the BGP Peer Group. Can have one of the following values: &#x60;DEFAULT&#x60; and &#x60;NONE&#x60;. |  |
| **rpki_roa_origin_asn** | **Integer** | The RPKI ROA Origin ASN of the BGP Peer Group based on location. |  |
| **e_bgp_multi_hop** | **Integer** | The eBGP Multi-hop of the BGP Peer Group. |  |
| **peering_loopbacks_v4** | **Array&lt;String&gt;** | The IPv4 Peering Loopback addresses of the BGP Peer Group. Valid IP formats are IPv4 addresses. |  |
| **peering_loopbacks_v6** | **Array&lt;String&gt;** | The IPv6 Peering Loopback addresses of the BGP Peer Group. Valid IP formats are IPv6 addresses. |  |
| **keep_alive_timer_seconds** | **Integer** | The Keep Alive Timer in seconds of the BGP Peer Group. |  |
| **hold_timer_seconds** | **Integer** | The Hold Timer in seconds of the BGP Peer Group. |  |
| **created_on** | **String** | Date and time of creation. | [optional] |
| **last_updated_on** | **String** | Date and time of last update. | [optional] |

## Example

```ruby
require 'pnap_network_api'

instance = NetworkApi::BgpPeerGroup.new(
  id: 60473c2509268bc77fd06d29,
  status: READY,
  location: ASH,
  ipv4_prefixes: null,
  ip_prefixes: null,
  target_asn_details: null,
  active_asn_details: null,
  password: E!73423ghhjfge45,
  advertised_routes: DEFAULT,
  rpki_roa_origin_asn: 20454,
  e_bgp_multi_hop: 7,
  peering_loopbacks_v4: [&quot;169.254.247.0&quot;,&quot;169.254.247.1&quot;],
  peering_loopbacks_v6: [&quot;fd00:0:0:1005::1&quot;,&quot;fd00:0:0:1005::2&quot;],
  keep_alive_timer_seconds: 10,
  hold_timer_seconds: 30,
  created_on: 2024-03-01T10:30:00Z,
  last_updated_on: 2024-03-01T14:30:00Z
)
```

