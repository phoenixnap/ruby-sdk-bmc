# Load the gem
require 'pnap_ip_api'
require 'oauth2'

require 'test/unit'
require "test/unit/runner/junitxml"
require 'uri'
require 'net/http'
require './testutils'
require 'json'

IpApi.configure do |config|
  config.access_token = "fake"

  # Changing host to mock server
  config.host = '127.0.0.1:1080'
  config.scheme = 'http'
  config.server_index = nil 
end

class TC_IpApi < Test::Unit::TestCase

  def verify_called_once(expectation)
    # Result retrieved from server's verification
    # Verifying expectation matched exactly once.
    verifyResult = TestUtils.verify_expectation_matched_times(expectation, 1)

    # Asserts a successful result.
    # If not successful, will print the body of verifyResult to debug.
    assert_equal '202', "#{verifyResult.code}", "API should have been hit exactly once. MockServer returned #{verifyResult.code}.\n #{verifyResult.body}"
  end

  def teardown
    TestUtils.reset_expectations
  end

  def test_get_ip_blocks
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('ipapi/ip_blocks_get')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = IpApi::IPBlocksApi.new

    result = api_instance.ip_blocks_get()

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end

  def test_create_ip_block
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('ipapi/ip_blocks_post')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = IpApi::IPBlocksApi.new
    opts = {
      ip_block_create: IpApi::IpBlockCreate.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.ip_blocks_post(opts)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_get_ip_block_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('ipapi/ip_blocks_get_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = IpApi::IPBlocksApi.new
    ip_block_id = TestUtils.extract_id_from(request)

    result = api_instance.ip_blocks_ip_block_id_get(ip_block_id)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_patch_ip_block_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('ipapi/ip_blocks_patch_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = IpApi::IPBlocksApi.new
    ip_block_id = TestUtils.extract_id_from(request)
    opts = {
      ip_block_patch: IpApi::IpBlockPatch.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.ip_blocks_ip_block_id_patch(ip_block_id, opts)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_delete_ip_block_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('ipapi/ip_blocks_delete_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = IpApi::IPBlocksApi.new
    ip_block_id = TestUtils.extract_id_from(request)

    result = api_instance.ip_blocks_ip_block_id_delete(ip_block_id)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

end