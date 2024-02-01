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

# Unit tests for BmcApi::SSHKeysApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SSHKeysApi' do
  before do
    # run before each test
    @api_instance = BmcApi::SSHKeysApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SSHKeysApi' do
    it 'should create an instance of SSHKeysApi' do
      expect(@api_instance).to be_instance_of(BmcApi::SSHKeysApi)
    end
  end

  # unit tests for ssh_keys_get
  # List SSH Keys.
  # List all SSH Keys.
  # @param [Hash] opts the optional parameters
  # @return [Array<SshKey>]
  describe 'ssh_keys_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for ssh_keys_post
  # Create SSH Key.
  # Create an SSH Key. SSH Keys created can be used for server creation and reset functionality.
  # @param ssh_key_create 
  # @param [Hash] opts the optional parameters
  # @return [SshKey]
  describe 'ssh_keys_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for ssh_keys_ssh_key_id_delete
  # Delete SSH Key.
  # Delete an SSH Key.
  # @param ssh_key_id The SSH Key&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @return [DeleteSshKeyResult]
  describe 'ssh_keys_ssh_key_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for ssh_keys_ssh_key_id_get
  # Get SSH Key.
  # Get SSH Key details.
  # @param ssh_key_id The SSH Key&#39;s ID.
  # @param [Hash] opts the optional parameters
  # @return [SshKey]
  describe 'ssh_keys_ssh_key_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for ssh_keys_ssh_key_id_put
  # Edit SSH Key.
  # Edit SSH Key details.
  # @param ssh_key_id The SSH Key&#39;s ID.
  # @param ssh_key_update 
  # @param [Hash] opts the optional parameters
  # @return [SshKey]
  describe 'ssh_keys_ssh_key_id_put test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
