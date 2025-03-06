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

  def test_get_private_networks
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/private_networks_get')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::PrivateNetworksApi.new
    opts = TestUtils.generate_query_params(request)

    result = api_instance.private_networks_get(opts)

    # Parsing time for comparison
    response[:body][0][:createdOn] = Time.parse(response[:body][0][:createdOn])

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end

  def test_create_private_network
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/private_networks_post')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::PrivateNetworksApi.new
    private_network_create = NetworkApi::PrivateNetworkCreate.build_from_hash(TestUtils.extract_request_body(request))
    opts = TestUtils.generate_query_params(request)

    result = api_instance.private_networks_post(private_network_create, opts)

    # Parsing time for comparison
    response[:body][:createdOn] = Time.parse(response[:body][:createdOn])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_get_private_network_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/private_networks_get_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = NetworkApi::PrivateNetworksApi.new
    network_id = TestUtils.extract_id_from(request)

    result = api_instance.private_networks_network_id_get(network_id)

    # Parsing time for comparison
    response[:body][:createdOn] = Time.parse(response[:body][:createdOn])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_put_private_network_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/private_networks_put_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = NetworkApi::PrivateNetworksApi.new
    network_id = TestUtils.extract_id_from(request)
    private_network_modify = NetworkApi::PrivateNetworkModify.build_from_hash(TestUtils.extract_request_body(request))

    result = api_instance.private_networks_network_id_put(network_id, private_network_modify)

    # Parsing time for comparison
    response[:body][:createdOn] = Time.parse(response[:body][:createdOn])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_delete_private_network_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/private_networks_delete_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::PrivateNetworksApi.new
    network_id = TestUtils.extract_id_from(request)

    result = api_instance.private_networks_network_id_delete(network_id)
    
    assert_nil result

    self.verify_called_once expectation
  end

  def test_get_public_networks
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/public_networks_get')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::PublicNetworksApi.new
    opts = TestUtils.generate_query_params(request)

    result = api_instance.public_networks_get(opts)

    # Parsing time for comparison
    response[:body][0][:createdOn] = Time.parse(response[:body][0][:createdOn])

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end

  def test_delete_public_network_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/public_networks_delete_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::PublicNetworksApi.new
    network_id = TestUtils.extract_id_from(request)

    result = api_instance.public_networks_network_id_delete(network_id)
    
    assert_nil result

    self.verify_called_once expectation
  end

  def test_get_public_network_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/public_networks_get_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::PublicNetworksApi.new
    network_id = TestUtils.extract_id_from(request)

    result = api_instance.public_networks_network_id_get(network_id)

    # Parsing time for comparison
    response[:body][:createdOn] = Time.parse(response[:body][:createdOn])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_public_networks_delete_ip_block_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/public_networks_delete_ip_block_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::PublicNetworksApi.new
    network_id = TestUtils.extract_id_from(request)
    ip_id = TestUtils.extract_id_from(request, :ipId)
    opts = TestUtils.generate_query_params(request)

    result = api_instance.public_networks_network_id_ip_blocks_ip_block_id_delete(network_id, ip_id, opts)

    assert_equal response[:body], result.to_s

    self.verify_called_once expectation
  end

  def test_public_networks_create_ip_block
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/public_networks_post_ip_block')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::PublicNetworksApi.new
    network_id = TestUtils.extract_id_from(request)
    public_network_ip_block = NetworkApi::PublicNetworkIpBlock.build_from_hash(TestUtils.extract_request_body(request))

    result = api_instance.public_networks_network_id_ip_blocks_post(network_id, public_network_ip_block)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_patch_public_network_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/public_networks_patch_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::PublicNetworksApi.new
    network_id = TestUtils.extract_id_from(request)
    public_network_modify = NetworkApi::PublicNetworkModify.build_from_hash(TestUtils.extract_request_body(request))

    result = api_instance.public_networks_network_id_patch(network_id, public_network_modify)

    # Parsing time for comparison
    response[:body][:createdOn] = Time.parse(response[:body][:createdOn])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_post_public_network
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/public_networks_post')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::PublicNetworksApi.new
    public_network_create = NetworkApi::PublicNetworkCreate.build_from_hash(TestUtils.extract_request_body(request))

    result = api_instance.public_networks_post(public_network_create)

    # Parsing time for comparison
    response[:body][:createdOn] = Time.parse(response[:body][:createdOn])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_get_bgp_peer_groups
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/bgp_peer_groups_get')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = NetworkApi::BGPPeerGroupsApi.new
    opts = TestUtils.generate_query_params(request)

    result = api_instance.bgp_peer_groups_get(opts)

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end

  def test_post_bgp_peer_groups
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/bgp_peer_groups_post')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::BGPPeerGroupsApi.new
    bgp_peer_groups_post = NetworkApi::BgpPeerGroupCreate.build_from_hash(TestUtils.extract_request_body(request))

    result = api_instance.bgp_peer_groups_post(bgp_peer_groups_post)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end
  
  def test_get_bgp_peer_group_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/bgp_peer_groups_get_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::BGPPeerGroupsApi.new
    bgp_peer_group_id = TestUtils.extract_id_from(request)

    result = api_instance.bgp_peer_groups_peer_group_id_get(bgp_peer_group_id)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_patch_bgp_peer_group_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/bgp_peer_groups_patch_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::BGPPeerGroupsApi.new
    network_id = TestUtils.extract_id_from(request)
    public_network_modify = NetworkApi::BgpPeerGroupPatch.build_from_hash(TestUtils.extract_request_body(request))

    result = api_instance.bgp_peer_groups_peer_group_id_patch(network_id, public_network_modify)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_delete_bgp_peer_group_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('networkapi/bgp_peer_groups_delete_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = NetworkApi::BGPPeerGroupsApi.new
    network_id = TestUtils.extract_id_from(request)

    result = api_instance.bgp_peer_groups_peer_group_id_delete(network_id)
    
    assert_nil result

    self.verify_called_once expectation
  end

end