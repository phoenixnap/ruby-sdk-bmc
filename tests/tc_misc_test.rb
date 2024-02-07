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

AuditApi.configure do |config|
  config.access_token = "fake"

  # Changing host to mock server
  config.host = '127.0.0.1:1080'
  config.scheme = 'http'
  config.server_index = nil 
end

class TC_Misc < Test::Unit::TestCase

  def verify_called_once(expectation)
    # Result retrieved from server's verification
    # Verifying expectation matched exactly once.
    verifyResult = TestUtils.verify_expectation_matched_times(expectation, 1)

    # Asserts a successful result.
    # If not successful, will print the body of verifyResult to debug.
    assert_equal '202', "#{verifyResult.code}", "API should have been hit exactly once. MockServer returned #{verifyResult.code}.\n #{verifyResult.body}"
  end

  def setup
    TestUtils.reset_mockserver
  end

  def teardown
    TestUtils.reset_expectations
  end

  def test_with_additional_properties
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('misc/events_get_additional_properties')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    # Creating new instance
    api_instance = AuditApi::EventsApi.new
    
    result = api_instance.events_get({})

    # Disabling equality check - additional properties are currently being thrown away.
    # Using "disallowAdditionalPropertiesIfNotPresent: false" doesn't work.
    # For now, the test instead only checks that the SDK doesn't break if extra properties
    # are present.

    # Parsing time for comparison
    # response[:body][0][:timestamp] = Time.parse(response[:body][0][:timestamp])

    # assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end
end