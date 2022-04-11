# Load the gem
require 'pnap_rancher_api'
require 'oauth2'

require 'test/unit'
require "test/unit/runner/junitxml"
require 'uri'
require 'net/http'
require './testutils'
require 'json'

RancherApi.configure do |config|
  config.access_token = "fake"

  # Changing host to mock server
  config.host = '127.0.0.1:1080'
  config.scheme = 'http'
  config.server_index = nil 
end

class TC_RancherApi < Test::Unit::TestCase

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

  def test_get_clusters
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('rancherapi/clusters_get')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    # Creating new instance
    api_instance = RancherApi::ClustersApi.new
    
    result = api_instance.clusters_get

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end

  def test_create_cluster
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('rancherapi/clusters_post')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    # Creating new instance
    api_instance = RancherApi::ClustersApi.new
    opts = {
      cluster: RancherApi::Cluster.build_from_hash(TestUtils.extract_request_body(request))
    }
    
    result = api_instance.clusters_post(opts)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_get_cluster_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('rancherapi/clusters_get_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    # Creating new instance
    api_instance = RancherApi::ClustersApi.new
    id = TestUtils.extract_id_from(request)
    
    result = api_instance.clusters_id_get(id)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_delete_cluster_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('rancherapi/clusters_delete_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    # Creating new instance
    api_instance = RancherApi::ClustersApi.new
    id = TestUtils.extract_id_from(request)
    
    result = api_instance.clusters_id_delete(id)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

end