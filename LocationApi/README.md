# pnap_location_api

LocationApi - the Ruby gem for the Locations API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
For more information, please visit [https://phoenixnap.com](https://phoenixnap.com)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build pnap_location_api.gemspec
```

Then either install the gem locally, replacing `<VERSION>` with the actual version:

```shell
gem install ./pnap_location_api-<VERSION>.gem
```

(for development, run `gem install --dev ./pnap_location_api-<VERSION>.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'pnap_location_api', '~> <VERSION>'

### Install from Git

To install this Gem from this repository, you'll need to get Bundler by doing `gem install bundler`. Add the following line in your Gemfile:

    gem 'pnap_location_api', git: 'https://github.com/phoenixnap/ruby-sdk-bmc-poc', glob: 'LocationApi/*.gemspec'

If you'd like the development version:

    gem 'pnap_location_api', git: 'https://github.com/phoenixnap/ruby-sdk-bmc-poc', glob: 'LocationApi/*.gemspec', branch: 'develop'

Then run `bundle install`.

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'pnap_location_api'

api_instance = LocationApi::LocationsApi.new
opts = {
  location: LocationApi::LocationEnum::PHX, # LocationEnum | Location of interest
  product_category: LocationApi::ProductCategoryEnum::SERVER # ProductCategoryEnum | Product category of interest
}

begin
  #Get All Locations
  result = api_instance.get_locations(opts)
  p result
rescue LocationApi::ApiError => e
  puts "Exception when calling LocationsApi->get_locations: #{e}"
end

```

Authorization can also be setup by using the [`oauth`](https://github.com/oauth-xx/oauth2) library:

```ruby
# Load the gem
require 'pnap_location_api'
require 'oauth2'

# Setup variables for getting a token.
client_id = 'YOUR_CLIENT_ID'
client_secret = 'YOUR_CLIENT_SECRET'
auth_url = 'https://auth.phoenixnap.com/auth/realms/BMC/protocol/openid-connect/token'


```

## Documentation for API Endpoints

All URIs are relative to *https://api.phoenixnap.com/location-api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*LocationApi::LocationsApi* | [**get_locations**](docs/LocationsApi.md#get_locations) | **GET** /locations | Get All Locations


## Documentation for Models

 - [LocationApi::Error](docs/Error.md)
 - [LocationApi::Location](docs/Location.md)
 - [LocationApi::LocationEnum](docs/LocationEnum.md)
 - [LocationApi::ProductCategory](docs/ProductCategory.md)
 - [LocationApi::ProductCategoryEnum](docs/ProductCategoryEnum.md)


## Documentation for Authorization

 All endpoints do not require authorization.
