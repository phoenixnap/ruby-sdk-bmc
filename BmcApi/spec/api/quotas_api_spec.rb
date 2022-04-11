=begin
#Bare Metal Cloud API

#Create, power off, power on, reset, reboot, or shut down your server with the Bare Metal Cloud API. Deprovision servers, get or edit SSH key details, and a lot more. Manage your infrastructure more efficiently using just a few simple api calls.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/how-to-deploy-bare-metal-cloud-server' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/bmc/v1/)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BmcApi::QuotasApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'QuotasApi' do
  before do
    # run before each test
    @api_instance = BmcApi::QuotasApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of QuotasApi' do
    it 'should create an instance of QuotasApi' do
      expect(@api_instance).to be_instance_of(BmcApi::QuotasApi)
    end
  end

  # unit tests for quotas_get
  # List quotas
  # Get account quota details.
  # @param [Hash] opts the optional parameters
  # @return [Array<Quota>]
  describe 'quotas_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for quotas_quota_id_actions_request_edit_post
  # Request quota limit change.
  # Sends a request to edit the limit of a quota.
  # @param quota_id The ID of the Quota.
  # @param [Hash] opts the optional parameters
  # @option opts [QuotaEditLimitRequest] :quota_edit_limit_request 
  # @return [nil]
  describe 'quotas_quota_id_actions_request_edit_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for quotas_quota_id_get
  # Get a quota.
  # Get account quota details.
  # @param quota_id The ID of the Quota.
  # @param [Hash] opts the optional parameters
  # @return [Quota]
  describe 'quotas_quota_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
