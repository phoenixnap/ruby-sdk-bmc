=begin
#Bare Metal Cloud API

#Create, power off, power on, reset, reboot, or shut down your server with the Bare Metal Cloud API.  Deprovision servers, get or edit SSH key details, assign public IPs, assign servers to networks and a lot more.  Manage your infrastructure more efficiently using just a few simple API calls.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/how-to-deploy-bare-metal-cloud-server' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/bmc/v1/)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BmcApi::ServersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ServersApi' do
  before do
    # run before each test
    @api_instance = BmcApi::ServersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ServersApi' do
    it 'should create an instance of ServersApi' do
      expect(@api_instance).to be_instance_of(BmcApi::ServersApi)
    end
  end

  # unit tests for delete_private_network
  # Removes the server from private network.
  # Removes the server from private network. &lt;b&gt;No actual configuration is performed on the operating system.&lt;/b&gt; BMC configures exclusively the networking devices in the datacenter infrastructure. Manual network configuration changes in the operating system of this server are required. &lt;b&gt;This is an advanced network action that can make your server completely unavailable over any network. Make sure this server is reachable over remote console for guaranteed access in case of misconfiguration.&lt;/b&gt;
  # @param server_id The server&#39;s ID.
  # @param private_network_id The private network identifier.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'delete_private_network test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_get
  # List servers.
  # List all servers owned by account.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :tag A list of query parameters related to tags in the form of tagName.tagValue
  # @return [Array<Server>]
  describe 'servers_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_post
  # Create new server.
  # Create (request) a new server for the account. Server DNS will be configured to access Google&#39;s public DNS at 8.8.8.8 . Note that the product availability API can be used prior to doing the provision request. Refer to https://developers.phoenixnap.com/docs/bmc-billing/1/routes/product-availability/get.
  # @param server_create 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :force Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups.
  # @return [Server]
  describe 'servers_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_actions_deprovision_post
  # Deprovision a server.
  # Deprovision the server. Supports advanced deprovision configuration.
  # @param server_id The server&#39;s ID.
  # @param relinquish_ip_block 
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'servers_server_id_actions_deprovision_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_actions_power_off_post
  # Power off server.
  # Power off specific server.
  # @param server_id The server&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @return [ActionResult]
  describe 'servers_server_id_actions_power_off_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_actions_power_on_post
  # Power on server.
  # Power on specific server.
  # @param server_id The server&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @return [ActionResult]
  describe 'servers_server_id_actions_power_on_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_actions_provision_post
  # Provision server.
  # Provision reserved server. Server DNS will be configured to access Google&#39;s public DNS at 8.8.8.8.
  # @param server_id The server&#39;s ID.
  # @param server_provision 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :force Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups.
  # @return [Server]
  describe 'servers_server_id_actions_provision_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_actions_reboot_post
  # Reboot server.
  # Reboot specific server.
  # @param server_id The server&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @return [ActionResult]
  describe 'servers_server_id_actions_reboot_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_actions_reserve_post
  # Reserve server.
  # Reserve specific server.
  # @param server_id The server&#39;s ID.
  # @param server_reserve 
  # @param [Hash] opts the optional parameters
  # @return [Server]
  describe 'servers_server_id_actions_reserve_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_actions_reset_post
  # Reset server.
  # Deprecated: Reset specific server. Reset only supports network configurations of type &#39;private network&#39; or &#39;IP blocks&#39;. As an alternative, the suggested action is to deprovision the server and provision a new one with the same configuration.
  # @param server_id The server&#39;s ID.
  # @param server_reset 
  # @param [Hash] opts the optional parameters
  # @return [ResetResult]
  describe 'servers_server_id_actions_reset_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_actions_shutdown_post
  # Shutdown server.
  # Shut down specific server.
  # @param server_id The server&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @return [ActionResult]
  describe 'servers_server_id_actions_shutdown_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_actions_transfer_reservation
  # Transfer server reservation.
  # Transfer server reservation. An active (READY) reservation can be transferred from a server in ERROR or RESERVED status to another HOURLY provisioned server of the same location and type.
  # @param server_id The server&#39;s ID.
  # @param reservation_transfer_details 
  # @param [Hash] opts the optional parameters
  # @return [Server]
  describe 'servers_server_id_actions_transfer_reservation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_delete
  # Delete server.
  # Deprovision specific server. Any IP blocks assigned to this server will also be relinquished and deleted. Deprecated: see /servers/{serverId}/actions/deprovision
  # @param server_id The server&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @return [DeleteResult]
  describe 'servers_server_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_get
  # Get server.
  # Get server properties.
  # @param server_id The server&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @return [Server]
  describe 'servers_server_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_ip_blocks_ip_block_id_delete
  # Unassign IP Block from Server.
  # Removes the IP block from the server. &lt;b&gt;No actual configuration is performed on the operating system.&lt;/b&gt; BMC configures exclusively the networking devices in the datacenter infrastructure. Manual network configuration changes in the operating system of this server are required. &lt;b&gt;This is an advanced network action that can make your server completely unavailable over any network. Make sure this server is reachable over remote console for guaranteed access in case of misconfiguration.&lt;/b&gt;
  # @param server_id The server&#39;s ID.
  # @param ip_block_id The IP Block identifier.
  # @param relinquish_ip_block 
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'servers_server_id_ip_blocks_ip_block_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_ip_blocks_post
  # Assign IP Block to Server.
  # Adds an IP block to this server. &lt;b&gt;No actual configuration is performed on the operating system.&lt;/b&gt; BMC configures exclusively the networking devices in the datacenter infrastructure. Manual network configuration changes in the operating system of this server are required.  A server can have at most one IPv4 block and one IPv6 block assigned simultaneously. Assigning IPv6 to server is only supported post-provision. Knowledge base article to help you can be found &lt;a href&#x3D;&#39;https://phoenixnap.com/kb/configure-server-with-public-ip-block#ftoc-heading-2&#39; target&#x3D;&#39;_blank&#39;&gt;here&lt;/a&gt;.
  # @param server_id The server&#39;s ID.
  # @param server_ip_block 
  # @param [Hash] opts the optional parameters
  # @return [ServerIpBlock]
  describe 'servers_server_id_ip_blocks_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_patch
  # Patch a Server.
  # Any changes to the hostname or description using the BMC API will reflect solely in the BMC API and portal. The changes are intended to keep the BMC data up to date with your server. We do not have access to your server&#39;s settings. Local changes to the server&#39;s hostname will not be reflected in the API or portal.
  # @param server_id The server&#39;s ID.
  # @param server_patch 
  # @param [Hash] opts the optional parameters
  # @return [Server]
  describe 'servers_server_id_patch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_private_networks_patch
  # Updates the server&#39;s private network&#39;s IP addresses
  # IP address changes intended to keep the BMC data up to date with server&#39;s operating system. We do not have access to the server&#39;s operating system and therefore manual configuration is required to apply the changes on the host. Knowledge base article to help you can be found &lt;a href&#x3D;&#39;https://phoenixnap.com/kb/bmc-server-management-via-api#ftoc-heading-6&#39; target&#x3D;&#39;_blank&#39;&gt;here&lt;/a&gt;
  # @param server_id The server&#39;s ID.
  # @param private_network_id The private network identifier.
  # @param server_network_update 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :force Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups.
  # @return [ServerPrivateNetwork]
  describe 'servers_server_id_private_networks_patch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_private_networks_post
  # Adds the server to a private network.
  # Adds the server to a private network. &lt;b&gt;No actual configuration is performed on the operating system.&lt;/b&gt; BMC configures exclusively the networking devices in the datacenter infrastructure. Manual network configuration changes in the operating system of this server are required. Knowledge base article to help you can be found &lt;a href&#x3D;&#39;https://phoenixnap.com/kb/configure-bmc-server-after-adding-to-network#ftoc-heading-3&#39; target&#x3D;&#39;_blank&#39;&gt;here&lt;/a&gt;.
  # @param server_id The server&#39;s ID.
  # @param server_private_network 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :force Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups.
  # @return [ServerPrivateNetwork]
  describe 'servers_server_id_private_networks_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_public_networks_delete
  # Removes the server from the Public Network
  # Removes the server from the Public Network. &lt;b&gt;No actual configuration is performed on the operating system.&lt;/b&gt; BMC configures exclusively the networking devices in the datacenter infrastructure. Manual network configuration changes in the operating system of this server are required. &lt;b&gt;This is an advanced network action that can make your server completely unavailable over any network. Make sure this server is reachable over remote console for guaranteed access in case of misconfiguration.&lt;/b&gt;
  # @param server_id The server&#39;s ID.
  # @param public_network_id The Public Network identifier.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'servers_server_id_public_networks_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_public_networks_patch
  # Updates the server&#39;s public network&#39;s IP addresses.
  # IP address changes intended to keep the BMC data up to date with server&#39;s operating system. We do not have access to the server&#39;s operating system and therefore manual configuration is required to apply the changes on the host. Knowledge base article to help you can be found &lt;a href&#x3D;&#39;https://phoenixnap.com/kb/bmc-server-management-via-api#ftoc-heading-6&#39; target&#x3D;&#39;_blank&#39;&gt;here&lt;/a&gt;
  # @param server_id The server&#39;s ID.
  # @param public_network_id The Public Network identifier.
  # @param server_network_update 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :force Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups.
  # @return [ServerPublicNetwork]
  describe 'servers_server_id_public_networks_patch test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_public_networks_post
  # Adds the server to a Public Network.
  # Adds the server to a Public Network. &lt;b&gt;No actual configuration is performed on the operating system.&lt;/b&gt; BMC configures exclusively the networking devices in the datacenter infrastructure. Manual network configuration changes in the operating system of this server are required. Knowledge base article to help you can be found &lt;a href&#x3D;&#39;https://phoenixnap.com/kb/configure-bmc-server-after-adding-to-network#ftoc-heading-3&#39; target&#x3D;&#39;_blank&#39;&gt;here&lt;/a&gt;.
  # @param server_id The server&#39;s ID.
  # @param server_public_network 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :force Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups.
  # @return [ServerPublicNetwork]
  describe 'servers_server_id_public_networks_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for servers_server_id_tags_put
  # Overwrite tags assigned for Server.
  # Overwrites tags assigned for Server and unassigns any tags not part of the request.
  # @param server_id The server&#39;s ID.
  # @param tag_assignment_request 
  # @param [Hash] opts the optional parameters
  # @return [Server]
  describe 'servers_server_id_tags_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
