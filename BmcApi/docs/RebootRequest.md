# BmcApi::RebootRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **boot_type** | **String** | Specifies whether to boot via &#x60;IPXE&#x60; (requires script) or &#x60;STANDARD&#x60; (default mechanism, incompatible with &#x60;ipxeUrl&#x60;). | [optional][default to &#39;STANDARD&#39;] |
| **ipxe_url** | **String** | The URL for the iPXE script, used only with &#x60;IPXE&#x60; boot type. If provided, it updates and replaces the existing stored URL; if not provided, the existing URL will be used. | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::RebootRequest.new(
  boot_type: null,
  ipxe_url: https://example.com/boot.ipxe
)
```

