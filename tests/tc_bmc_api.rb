# Load the gem
require 'pnap_bmc_api'
require 'oauth2'

require 'test/unit'
require "test/unit/runner/junitxml"
require 'uri'
require 'net/http'
require './testutils'
require 'json'

BmcApi.configure do |config|
  config.access_token = "fake"

  # Changing host to mock server
  config.host = '127.0.0.1:1080'
  config.scheme = 'http'
  config.server_index = nil 
end

class TC_BmcApi < Test::Unit::TestCase

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

  def test_get_quotas
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/quotas/quotas_get')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::QuotasApi.new

    result = api_instance.quotas_get

    # Parsing time for comparison
    response[:body][0][:quotaEditLimitRequestDetails][0][:requestedOn] =
        Time.parse(response[:body][0][:quotaEditLimitRequestDetails][0][:requestedOn])

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end

  def test_get_quota_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/quotas/quotas_get_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::QuotasApi.new
    quota_id = TestUtils.extract_id_from(request)

    result = api_instance.quotas_quota_id_get(quota_id)

    # Parsing time for comparison
    response[:body][:quotaEditLimitRequestDetails][0][:requestedOn] =
        Time.parse(response[:body][:quotaEditLimitRequestDetails][0][:requestedOn])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_quota_request_edit
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/quotas/quotas_action_request_edit')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::QuotasApi.new
    quota_id = TestUtils.extract_id_from(request)
    opts = {
        quota_edit_limit_request: BmcApi::QuotaEditLimitRequest.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.quotas_quota_id_actions_request_edit_post(quota_id, opts)

    self.verify_called_once expectation
  end

  def test_get_sshkeys
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/sshkeys/sshkeys_get')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::SSHKeysApi.new

    result = api_instance.ssh_keys_get

    # Parsing time for comparison
    response[:body][0][:createdOn] = Time.parse(response[:body][0][:createdOn])
    response[:body][0][:lastUpdatedOn] = Time.parse(response[:body][0][:lastUpdatedOn])

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end

  def test_get_sshkey_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/sshkeys/sshkeys_get_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::SSHKeysApi.new

    ssh_key_id = TestUtils.extract_id_from(request)

    result = api_instance.ssh_keys_ssh_key_id_get(ssh_key_id)

    # Parsing time for comparison
    response[:body][:createdOn] = Time.parse(response[:body][:createdOn])
    response[:body][:lastUpdatedOn] = Time.parse(response[:body][:lastUpdatedOn])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_post_sshkey
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/sshkeys/sshkeys_post')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::SSHKeysApi.new

    opts = {
      ssh_key_create: BmcApi::SshKeyCreate.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.ssh_keys_post(opts)

    # Parsing time for comparison
    response[:body][:createdOn] = Time.parse(response[:body][:createdOn])
    response[:body][:lastUpdatedOn] = Time.parse(response[:body][:lastUpdatedOn])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_put_sshkey_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/sshkeys/sshkeys_put_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::SSHKeysApi.new

    ssh_key_id = TestUtils.extract_id_from(request)
    opts = {
      ssh_key_update: BmcApi::SshKeyUpdate.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.ssh_keys_ssh_key_id_put(ssh_key_id, opts)

    # Parsing time for comparison
    response[:body][:createdOn] = Time.parse(response[:body][:createdOn])
    response[:body][:lastUpdatedOn] = Time.parse(response[:body][:lastUpdatedOn])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_delete_sshkey_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/sshkeys/sshkeys_delete_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::SSHKeysApi.new

    ssh_key_id = TestUtils.extract_id_from(request)

    result = api_instance.ssh_keys_ssh_key_id_delete(ssh_key_id)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_get_servers
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_get')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    opts = TestUtils.generate_query_params(request)

    result = api_instance.servers_get opts

    # Parsing time for comparison
    response[:body][0][:provisionedOn] = Time.parse(response[:body][0][:provisionedOn])

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end

  def test_get_servers_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_get_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)

    result = api_instance.servers_server_id_get(server_id)

    # Parsing time for comparison
    response[:body][:provisionedOn] = Time.parse(response[:body][:provisionedOn])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_create_server
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_post')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    opts = {
      server_create: BmcApi::ServerCreate.build_from_hash(TestUtils.extract_request_body(request)),
      force: TestUtils.generate_query_params(request)[:force]
    }

    result = api_instance.servers_post(opts)

    # Parsing time for comparison
    response[:body][:provisionedOn] = Time.parse(response[:body][:provisionedOn])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_delete_servers_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_delete_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)

    result = api_instance.servers_server_id_delete(server_id)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_patch_server
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_patch_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)
    opts = {
      server_patch: BmcApi::ServerPatch.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.servers_server_id_patch(server_id, opts)

    # Parsing time for comparison
    response[:body][:provisionedOn] = Time.parse(response[:body][:provisionedOn])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_server_deprovision
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_action_deprovision')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)
    opts = {
      relinquish_ip_block: BmcApi::RelinquishIpBlock.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.servers_server_id_actions_deprovision_post(server_id, opts)

    assert_equal response[:body], result

    self.verify_called_once expectation
  end

  def test_server_power_off
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_action_power_off')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)

    result = api_instance.servers_server_id_actions_power_off_post(server_id)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_server_power_on
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_action_power_on')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)

    result = api_instance.servers_server_id_actions_power_on_post(server_id)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_server_reboot
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_action_reboot')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)

    result = api_instance.servers_server_id_actions_reboot_post(server_id)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_server_reserve
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_action_reserve')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)
    opts = {
      server_reserve: BmcApi::ServerReserve.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.servers_server_id_actions_reserve_post(server_id, opts)

    # Parsing time for comparison
    response[:body][:provisionedOn] = Time.parse(response[:body][:provisionedOn])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_server_reset
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_action_reset')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)
    opts = {
      server_reset: BmcApi::ServerReset.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.servers_server_id_actions_reset_post(server_id, opts)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_server_shutdown
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_action_shutdown')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)

    result = api_instance.servers_server_id_actions_shutdown_post(server_id)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_server_create_ip_block
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_post_ip_block')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)
    opts = {
      server_ip_block: BmcApi::ServerIpBlock.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.servers_server_id_ip_blocks_post(server_id, opts)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_server_delete_ip_block
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_delete_ip_block_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)
    ip_block_id = TestUtils.extract_id_from(request, :ipId)
    opts = {
      relinquish_ip_block: BmcApi::RelinquishIpBlock.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.servers_server_id_ip_blocks_ip_block_id_delete(server_id, ip_block_id, opts)

    assert_equal response[:body], result

    self.verify_called_once expectation
  end

  def test_server_create_private_network
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_post_private_networks')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)
    opts = {
      server_private_network: BmcApi::ServerPrivateNetwork.build_from_hash(TestUtils.extract_request_body(request)),
      force: TestUtils.generate_query_params(request)[:force]
    }

    result = api_instance.servers_server_id_private_networks_post(server_id, opts)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_server_delete_private_network
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_delete_private_network_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)
    private_network_id = TestUtils.extract_id_from(request, :networkId)

    result = api_instance.delete_private_network(server_id, private_network_id)

    assert_equal response[:body], result

    self.verify_called_once expectation
  end

  def test_server_put_tags_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_put_tags_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)
    opts = {
      tag_assignment_request: [BmcApi::TagAssignmentRequest.build_from_hash(TestUtils.extract_request_body(request))]
    }

    result = api_instance.servers_server_id_tags_put(server_id, opts)

    # Parsing time for comparison
    response[:body][:provisionedOn] = Time.parse(response[:body][:provisionedOn])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_servers_post_public_networks
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_post_public_networks')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)
    opts = {
      server_public_network: BmcApi::ServerPublicNetwork.build_from_hash(TestUtils.extract_request_body(request)),
      force: TestUtils.generate_query_params(request)[:force]
    }

    result = api_instance.servers_server_id_public_networks_post(server_id, opts)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_servers_delete_public_networks_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('bmcapi/servers/servers_delete_public_network_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)
    
    api_instance = BmcApi::ServersApi.new
    server_id = TestUtils.extract_id_from(request)
    network_id = TestUtils.extract_id_from(request, :networkId)

    result = api_instance.servers_server_id_public_networks_delete(server_id, network_id)

    assert_equal response[:body], result.to_s

    self.verify_called_once expectation
  end

end