# RancherApi::RancherServerMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The Rancher Server URL. | [optional] |
| **username** | **String** | The username to use to login to the Rancher Server. This field is returned only as a response to the create cluster request. Make sure to take note or you will not be able to access the server. | [optional] |
| **password** | **String** | This is the password to be used to login to the Rancher Server. This field is returned only as a response to the create cluster request. Make sure to take note or you will not be able to access the server. | [optional] |

## Example

```ruby
require 'pnap_rancher_api'

instance = RancherApi::RancherServerMetadata.new(
  url: https://rancher/,
  username: admin,
  password: 1234567890abcd!
)
```

