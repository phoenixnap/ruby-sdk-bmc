=begin
#Network Storage API

#Create, list, edit, and delete storage networks with the Network Storage API. Use storage networks to expand storage capacity on a private network. <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/bare-metal-cloud-storage' target='_blank'>here</a> </span> <br> <b>All URLs are relative to (https://api.phoenixnap.com/network-storage/v1/)</b> 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NetworkStorageApi::StorageNetworksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'StorageNetworksApi' do
  before do
    # run before each test
    @api_instance = NetworkStorageApi::StorageNetworksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StorageNetworksApi' do
    it 'should create an instance of StorageNetworksApi' do
      expect(@api_instance).to be_instance_of(NetworkStorageApi::StorageNetworksApi)
    end
  end

  # unit tests for storage_networks_get
  # List all storage networks.
  # List all storage networks.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :location If present will filter the result by the given location.
  # @return [Array<StorageNetwork>]
  describe 'storage_networks_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for storage_networks_id_delete
  # Delete a storage network and its volume.
  # Delete a storage network and its volume. A storage network can only be removed if it&#39;s not in &#39;BUSY&#39; state. Billing stops on storage network deletion.
  # @param storage_network_id ID of storage network.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'storage_networks_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for storage_networks_id_get
  # Get storage network details.
  # Get storage network details.
  # @param storage_network_id ID of storage network.
  # @param [Hash] opts the optional parameters
  # @return [StorageNetwork]
  describe 'storage_networks_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for storage_networks_id_patch
  # Update storage network details.
  # Update storage network details.
  # @param storage_network_id ID of storage network.
  # @param [Hash] opts the optional parameters
  # @option opts [StorageNetworkUpdate] :storage_network_update Storage network to be updated.
  # @return [StorageNetwork]
  describe 'storage_networks_id_patch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for storage_networks_post
  # Create a storage network and volume.
  # Create a storage network and volume.
  # @param [Hash] opts the optional parameters
  # @option opts [StorageNetworkCreate] :storage_network_create 
  # @return [StorageNetwork]
  describe 'storage_networks_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for storage_networks_storage_network_id_volumes_get
  # Display one or more volumes belonging to a storage network.
  # Display one or more volumes belonging to a storage network.
  # @param storage_network_id ID of storage network.
  # @param [Hash] opts the optional parameters
  # @return [Array<Volume>]
  describe 'storage_networks_storage_network_id_volumes_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for storage_networks_storage_network_id_volumes_volume_id_get
  # Get a storage network&#39;s volume details.
  # Get a storage network&#39;s volume details.
  # @param storage_network_id ID of storage network.
  # @param volume_id ID of volume.
  # @param [Hash] opts the optional parameters
  # @return [Volume]
  describe 'storage_networks_storage_network_id_volumes_volume_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
