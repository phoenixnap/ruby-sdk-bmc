# bmc-sdk-ruby

A Ruby SDK for the BMC API.

## Description

A full specification of the BMC API is at [https://developers.phoenixnap.com/docs/bmc/1/overview](https://developers.phoenixnap.com/docs/bmc/1/overview).

## Quick Start

First, login to your account at [PhoenixNAP](https://bmc.phoenixnap.com) and create a new OAuth application. You will be presented with credentials for that application. Save those credentials in a new file at `$HOME/.pnap/config`. The file contents must be YAML and take the form:

```yaml
client_id: <YOUR_OAUTH_CLIENT_ID>
client_secret: <YOUR_OAUTH_CLIENT_SECRET>
```

Next install the `bmc-sdk` Ruby gem:

```sh
gem install bmc-sdk
```

With the configuration in place and gem installed you can create an execute a Ruby script like the following:

```ruby
#!/usr/bin/env ruby

require 'bmc-sdk'

# parse the configuration file at ~/.pnap/config (contains your OAuth client credentials)
# and setup a preconfigured client
client = Bmc::Sdk::load_client

# Create a new GetServers command object
listCmd = Bmc::Sdk::GetServers.new(client)

# Execute the command and display the results. 
# The client uses the OAuth2 client and Faraday under the covers.
result = listCmd.execute
puts result.body
```
