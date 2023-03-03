=begin
#Bare Metal Cloud API

#Create, power off, power on, reset, reboot, or shut down your server with the Bare Metal Cloud API.  Deprovision servers, get or edit SSH key details, assign public IPs, assign servers to networks and a lot more.  Manage your infrastructure more efficiently using just a few simple API calls.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/how-to-deploy-bare-metal-cloud-server' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/bmc/v1/)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for BmcApi::ServerNetworkUpdate
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe BmcApi::ServerNetworkUpdate do
  let(:instance) { BmcApi::ServerNetworkUpdate.new }

  describe 'test an instance of ServerNetworkUpdate' do
    it 'should create an instance of ServerNetworkUpdate' do
      expect(instance).to be_instance_of(BmcApi::ServerNetworkUpdate)
    end
  end
  describe 'test attribute "ips"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end