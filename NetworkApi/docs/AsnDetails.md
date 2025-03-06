# NetworkApi::AsnDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asn** | **Integer** | The BGP Peer Group ASN. |  |
| **is_bring_your_own** | **Boolean** | True if the BGP Peer Group ASN is a &#x60;bring your own&#x60; ASN. |  |
| **verification_status** | **String** | The BGP Peer Group ASN verification status. Can have one of the following values: &#x60;PENDING_VERIFICATION&#x60;, &#x60;FAILED_VERIFICATION&#x60; and &#x60;VERIFIED&#x60;. |  |
| **verification_reason** | **String** | The BGP Peer Group ASN verification reason for the respective status. | [optional] |

## Example

```ruby
require 'pnap_network_api'

instance = NetworkApi::AsnDetails.new(
  asn: 65401,
  is_bring_your_own: false,
  verification_status: VERIFIED,
  verification_reason: Bring Your Own ASN verification succeeded all checks.
)
```

