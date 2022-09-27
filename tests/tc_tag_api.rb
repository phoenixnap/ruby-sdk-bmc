# Load the gem
require 'pnap_tag_api'
require 'oauth2'

require 'test/unit'
require "test/unit/runner/junitxml"
require 'uri'
require 'net/http'
require './testutils'
require 'json'

TagApi.configure do |config|
  config.access_token = "fake"

  # Changing host to mock server
  config.host = '127.0.0.1:1080'
  config.scheme = 'http'
  config.server_index = nil 
end

class TC_TagApi < Test::Unit::TestCase

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

  def test_get_tags
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('tagapi/tags_get')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = TagApi::TagsApi.new
    opts = TestUtils.generate_query_params(request)

    result = api_instance.tags_get(opts)

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end

  def test_create_tag
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('tagapi/tags_post')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = TagApi::TagsApi.new
    tag_create = TagApi::TagCreate.build_from_hash(TestUtils.extract_request_body(request))

    result = api_instance.tags_post(tag_create)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_get_tag_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('tagapi/tags_get_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = TagApi::TagsApi.new
    tag_id = TestUtils.extract_id_from(request)

    result = api_instance.tags_tag_id_get(tag_id)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_patch_tag_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('tagapi/tags_patch_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = TagApi::TagsApi.new
    tag_id = TestUtils.extract_id_from(request)
    tag_update = TagApi::TagUpdate.build_from_hash(TestUtils.extract_request_body(request))

    result = api_instance.tags_tag_id_patch(tag_id, tag_update)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_delete_tag_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('tagapi/tags_delete_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = TagApi::TagsApi.new
    tag_id = TestUtils.extract_id_from(request)

    result = api_instance.tags_tag_id_delete(tag_id)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

end