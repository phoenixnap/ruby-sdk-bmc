=begin
#Networks API

#Create, list, edit and delete public/private networks with the Network API. Use public networks to place multiple  servers on the same network or VLAN. Assign new servers with IP addresses from the same CIDR range. Use private  networks to avoid unnecessary egress data charges. Model your networks according to your business needs.<br> <br> <span class='pnap-api-knowledge-base-link'> Helpful knowledge base articles are available for  <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#multi-private-backend-network-api' target='_blank'>multi-private backend networks</a>,  <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#ftoc-heading-15' target='_blank'>public networks</a> and <a href='https://phoenixnap.com/kb/border-gateway-protocol-bmc' target='_blank'>border gateway protocol peer groups</a>. </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/networks/v1/)</b> 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NetworkApi::PrivateNetworksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PrivateNetworksApi' do
  before do
    # run before each test
    @api_instance = NetworkApi::PrivateNetworksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PrivateNetworksApi' do
    it 'should create an instance of PrivateNetworksApi' do
      expect(@api_instance).to be_instance_of(NetworkApi::PrivateNetworksApi)
    end
  end

  # unit tests for private_networks_get
  # List Private Networks.
  # List all Private Networks owned by account.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :location If present will filter the result by the given location of the Private Networks.
  # @return [Array<PrivateNetwork>]
  describe 'private_networks_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for private_networks_network_id_delete
  # Delete a Private Network.
  # Delete Private Network.
  # @param private_network_id The private network identifier.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'private_networks_network_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for private_networks_network_id_get
  # Get a Private Network.
  # Retrieve Private Network Details.
  # @param private_network_id The private network identifier.
  # @param [Hash] opts the optional parameters
  # @return [PrivateNetwork]
  describe 'private_networks_network_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for private_networks_network_id_put
  # Update a Private Network.
  # Update Private Network Details.
  # @param private_network_id The private network identifier.
  # @param private_network_modify 
  # @param [Hash] opts the optional parameters
  # @return [PrivateNetwork]
  describe 'private_networks_network_id_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for private_networks_post
  # Create a Private Network.
  # Create a Private Network.
  # @param private_network_create 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :force Query parameter controlling advanced features availability. Currently applicable for networking. It is advised to use with caution since it might lead to unhealthy setups.
  # @return [PrivateNetwork]
  describe 'private_networks_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
