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
require 'date'

# Unit tests for BmcApi::IpBlocksConfiguration
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe BmcApi::IpBlocksConfiguration do
  let(:instance) { BmcApi::IpBlocksConfiguration.new }

  describe 'test an instance of IpBlocksConfiguration' do
    it 'should create an instance of IpBlocksConfiguration' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(BmcApi::IpBlocksConfiguration)
    end
  end

  describe 'test attribute "configuration_type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["PURCHASE_NEW", "USER_DEFINED", "NONE"])
      # validator.allowable_values.each do |value|
      #   expect { instance.configuration_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "ip_blocks"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
