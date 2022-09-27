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

class TC_AuditApi < Test::Unit::TestCase

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

  def test_get_events_all_query_params
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('auditapi/events_get')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    # Creating new instance
    api_instance = AuditApi::EventsApi.new
    opts = TestUtils.generate_query_params(request)
    
    result = api_instance.events_get(opts)

    # Parsing time for comparison
    response[:body][0][:timestamp] = Time.parse(response[:body][0][:timestamp])

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end
end