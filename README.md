<h1 align="center">
  <br>
  <a href="https://phoenixnap.com/bare-metal-cloud"><img src="https://user-images.githubusercontent.com/78744488/109779287-16da8600-7c06-11eb-81a1-97bf44983d33.png" alt="phoenixnap Bare Metal Cloud" width="300"></a>
  <br>
  Ruby SDK for Bare Metal Cloud
  <br>
</h1>

<p align="center">
Official Bare Metal Cloud SDK for Ruby. Use it to manage your Bare Metal Cloud resources by interacting with the <a href="https://developers.phoenixnap.com/docs/bmc/1/overview">Bare Metal Cloud API</a>.
</p>

<p align="center">
  <a href="https://phoenixnap.com/bare-metal-cloud">Bare Metal Cloud</a> •
  <a href="https://developers.phoenixnap.com/">Developers Portal</a> •
  <a href="http://phoenixnap.com/kb">Knowledge Base</a> •
  <a href="https://developers.phoenixnap.com/support">Support</a>
</p>

## Requirements

- [Bare Metal Cloud](https://bmc.phoenixnap.com) account
- Ruby

## Creating a Bare Metal Cloud account

1. Go to the [Bare Metal Cloud signup page](https://support.phoenixnap.com/wap-jpost3/bmcSignup).
2. Follow the prompts to set up your account.
3. Use your credentials to [log in to Bare Metal Cloud portal](https://bmc.phoenixnap.com).

:arrow_forward: **Video tutorial:** [How to Create a Bare Metal Cloud Account](https://www.youtube.com/watch?v=RLRQOisEB-k)
<br>

:arrow_forward: **Video tutorial:** [Introduction to Bare Metal Cloud](https://www.youtube.com/watch?v=8TLsqgLDMN4)

## Installing the Ruby SDK

The Bare Metal Cloud SDK for Ruby is split into 11 main gems. The following are all of the gems available:

- `pnap_audit_api`
- `pnap_bmc_api`
- `pnap_ip_api`
- `pnap_network_api`
- `pnap_network_storage_api`
- `pnap_rancher_api`
- `pnap_tag_api`
- `pnap_location_api`
- `pnap_billing_api`
- `pnap_invoicing_api`
- `pnap_payments_api`

Each gem can be installed with the following command:

```sh
gem install <GEM_NAME>
```
## Authentication

Each gem can be authenticated by configuring the SDK with an OAuth2 access token. The following is an example using the Audit API SDK:

```ruby
require 'pnap_audit_api'

AuditApi.configure do |config|
  config.access_token = 'YOUR ACCESS TOKEN'
end
```

The [`oauth2`](https://github.com/oauth-xx/oauth2) library can also be used in order to generate a token using your **Client ID** and **Client Secret**.

```ruby
# Load the gem
require 'pnap_audit_api'
require 'oauth2'

# Setup variables for getting a token.
client_id = 'YOUR_CLIENT_ID'
client_secret = 'YOUR_CLIENT_SECRET'
auth_url = 'https://auth.phoenixnap.com/auth/realms/BMC/protocol/openid-connect/token'


# Setup authorization
AuditApi.configure do |config|
  # Retrieve the token using OAuth2.
  client = OAuth2::Client.new(client_id, client_secret, token_url: auth_url)
  token = client.client_credentials.get_token

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = token.token
end
```

To get a Client ID and Client Secret, follow these steps:

1. [Log in to the Bare Metal Cloud portal](https://bmc.phoenixnap.com).
2. On the left side menu, click on API Credentials.
3. Click the Create Credentials button.
4. Fill in the Name and Description fields, select the permissions scope and click Create.
5. In the table, click on Actions and select View Credentials from the dropdown.
6. The values can be found in the Client ID and Client Secret fields.

## Executing a Ruby script

Information on using each SDK can be found using its respective README:

- [`pnap_audit_api`](./AuditApi/README.md)
- [`pnap_bmc_api`](./BmcApi/README.md)
- [`pnap_ip_api`](./IpApi/README.md)
- [`pnap_network_api`](./NetworkApi/README.md)
- [`pnap_rancher_api`](./RancherApi/README.md)
- [`pnap_tag_api`](./TagApi/README.md)

## Bare Metal Cloud community

Become part of the Bare Metal Cloud community to get updates on new features, help us improve the platform, and engage with developers and other users.

- Follow [@phoenixNAP on Twitter](https://twitter.com/phoenixnap)
- Join the [official Slack channel](https://phoenixnap.slack.com)
- Sign up for our [Developers Monthly newsletter](https://phoenixnap.com/developers-monthly-newsletter)

### Resources

- [Product page](https://phoenixnap.com/bare-metal-cloud)
- [Instance pricing](https://phoenixnap.com/bare-metal-cloud/instances)
- [YouTube tutorials](https://www.youtube.com/watch?v=8TLsqgLDMN4&list=PLWcrQnFWd54WwkHM0oPpR1BrAhxlsy1Rc&ab_channel=PhoenixNAPGlobalITServices)
- [Developers Portal](https://developers.phoenixnap.com)
- [Knowledge Base](https://phoenixnap.com/kb)
- [Blog](https:/phoenixnap.com/blog)

### Documentation

- [API documentation](https://developers.phoenixnap.com/apis)

### Contact phoenixNAP

Get in touch with us if you have questions or need help with Bare Metal Cloud.

<p align="left">
  <a href="https://twitter.com/phoenixNAP">Twitter</a> •
  <a href="https://www.facebook.com/phoenixnap">Facebook</a> •
  <a href="https://www.linkedin.com/company/phoenix-nap">LinkedIn</a> •
  <a href="https://www.instagram.com/phoenixnap">Instagram</a> •
  <a href="https://www.youtube.com/user/PhoenixNAPdatacenter">YouTube</a> •
  <a href="https://developers.phoenixnap.com/support">Email</a> 
</p>

<p align="center">
  <br>
  <a href="https://phoenixnap.com/bare-metal-cloud"><img src="https://user-images.githubusercontent.com/81640346/115243282-0c773b80-a123-11eb-9de7-59e3934a5712.jpg" alt="phoenixnap Bare Metal Cloud"></a>
</p>
