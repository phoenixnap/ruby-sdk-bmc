# Load the gem
require 'pnap_network_api'
require 'oauth2'

require 'test/unit'
require "test/unit/runner/junitxml"
require 'uri'
require 'net/http'
require './testutils'
require 'json'

NetworkApi.configure do |config|
  config.access_token = "fake"

  # Changing host to mock server
  config.host = '127.0.0.1:1080'
  config.scheme = 'http'
  config.server_index = nil 
end

class TC_NetworkApi < Test::Unit::TestCase

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

  def test_get_networks
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/networks_get')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::PrivateNetworksApi.new
    opts = TestUtils.generate_query_params(request)

    result = api_instance.private_networks_get(opts)

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end

  def test_create_network
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/networks_post')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::PrivateNetworksApi.new
    opts = {
      private_network_create: NetworkApi::PrivateNetworkCreate.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.private_networks_post(opts)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_get_network_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/networks_get_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = NetworkApi::PrivateNetworksApi.new
    network_id = TestUtils.extract_id_from(request)

    result = api_instance.private_networks_network_id_get(network_id)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_put_network_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/networks_put_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = NetworkApi::PrivateNetworksApi.new
    network_id = TestUtils.extract_id_from(request)
    opts = {
      private_network_modify: NetworkApi::PrivateNetworkModify.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.private_networks_network_id_put(network_id, opts)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_delete_network_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/networks_delete_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::PrivateNetworksApi.new
    network_id = TestUtils.extract_id_from(request)

    api_instance.private_networks_network_id_delete(network_id)

    self.verify_called_once expectation
  end

end