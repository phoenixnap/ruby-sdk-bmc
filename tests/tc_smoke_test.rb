# Load the gem
require 'pnap_audit_api'
require 'oauth2'

require 'test/unit'
require "test/unit/runner/junitxml"
require 'uri'
require 'net/http'
require './testutils'
require 'json'
require 'time'

# Setup variables for getting a token.
client_id = '...'
client_secret = '...'
auth_url = 'https://auth-dev.phoenixnap.com/auth/realms/BMC/protocol/openid-connect/token'
api_url = 'https://api-dev.phoenixnap.com/audit/v1'

# Setup authorization
AuditApi.configure do |config|
  # Retrieve the token using OAuth2.
  client = OAuth2::Client.new(client_id, client_secret, token_url: auth_url)
  token = client.client_credentials.get_token

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = token.token

  # Configure to use DEV environment
  config.host = api_url
  config.server_index = nil
end

class TC_SmokeTest < Test::Unit::TestCase
    def test_smoke_test        
        # Creating new instance
        api_instance = AuditApi::EventsApi.new
        
        result = api_instance.events_get({})

        puts "RESULT: #{result[0]}"
    end
end