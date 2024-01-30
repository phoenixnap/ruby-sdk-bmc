# pnap_invoicing_api

InvoicingApi - the Ruby gem for the Invoicing API

List, fetch and pay invoices with the Invoicing API.


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
For more information, please visit [https://phoenixnap.com/](https://phoenixnap.com/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build pnap_invoicing_api.gemspec
```

Then either install the gem locally, replacing `<VERSION>` with the actual version:

```shell
gem install ./pnap_invoicing_api-<VERSION>.gem
```

(for development, run `gem install --dev ./pnap_invoicing_api-<VERSION>.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'pnap_invoicing_api', '~> <VERSION>'

### Install from Git

To install this Gem from this repository, you'll need to get Bundler by doing `gem install bundler`. Add the following line in your Gemfile:

    gem 'pnap_invoicing_api', git: 'https://github.com/phoenixnap/ruby-sdk-bmc-poc', glob: 'InvoicingApi/*.gemspec'

If you'd like the development version:

    gem 'pnap_invoicing_api', git: 'https://github.com/phoenixnap/ruby-sdk-bmc-poc', glob: 'InvoicingApi/*.gemspec', branch: 'develop'

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
require 'pnap_invoicing_api'

# Setup authorization
InvoicingApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
end

api_instance = InvoicingApi::InvoicesApi.new
opts = {
  number: '13218-1180326', # String | A user-friendly reference number assigned to the invoice.
  status: 'PAID', # String | Payment status of the invoice.
  sent_on_from: Time.parse('2020-04-13T00:00:00.000Z'), # Time | Minimum value to filter invoices by sent on date.
  sent_on_to: Time.parse('2022-04-13T00:00:00.000Z'), # Time | Maximum value to filter invoices by sent on date.
  limit: 25, # Integer | The limit of the number of results returned. The number of records returned may be smaller than the limit.
  offset: 5, # Integer | The number of items to skip in the results.
  sort_field: 'number', # String | If a sortField is requested, pagination will be done after sorting. Default sorting is by number.
  sort_direction: 'ASC' # String | Sort Given Field depending on the desired direction. Default sorting is descending.
}

begin
  #List invoices.
  result = api_instance.invoices_get(opts)
  p result
rescue InvoicingApi::ApiError => e
  puts "Exception when calling InvoicesApi->invoices_get: #{e}"
end

```

Authorization can also be setup by using the [`oauth`](https://github.com/oauth-xx/oauth2) library:

```ruby
# Load the gem
require 'pnap_invoicing_api'
require 'oauth2'

# Setup variables for getting a token.
client_id = 'YOUR_CLIENT_ID'
client_secret = 'YOUR_CLIENT_SECRET'
auth_url = 'https://auth.phoenixnap.com/auth/realms/BMC/protocol/openid-connect/token'


# Setup authorization
InvoicingApi.configure do |config|
  # Retrieve the token using OAuth2.
  client = OAuth2::Client.new(client_id, client_secret, token_url: auth_url)
  token = client.client_credentials.get_token

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = token.token
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.phoenixnap.com/invoicing/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*InvoicingApi::InvoicesApi* | [**invoices_get**](docs/InvoicesApi.md#invoices_get) | **GET** /invoices | List invoices.
*InvoicingApi::InvoicesApi* | [**invoices_invoice_id_generate_pdf_post**](docs/InvoicesApi.md#invoices_invoice_id_generate_pdf_post) | **POST** /invoices/{invoiceId}/actions/generate-pdf | Generate invoice details as PDF.
*InvoicingApi::InvoicesApi* | [**invoices_invoice_id_get**](docs/InvoicesApi.md#invoices_invoice_id_get) | **GET** /invoices/{invoiceId} | Get invoice details.
*InvoicingApi::InvoicesApi* | [**invoices_invoice_id_pay_post**](docs/InvoicesApi.md#invoices_invoice_id_pay_post) | **POST** /invoices/{invoiceId}/actions/pay | Pay an invoice.


## Documentation for Models

 - [InvoicingApi::Error](docs/Error.md)
 - [InvoicingApi::Invoice](docs/Invoice.md)
 - [InvoicingApi::PaginatedInvoices](docs/PaginatedInvoices.md)
 - [InvoicingApi::PaginatedResponse](docs/PaginatedResponse.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### OAuth2


- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
  - invoices: Grants full access to Invoicing API.
  - invoices.read: Grants read only access to Invoicing API.
