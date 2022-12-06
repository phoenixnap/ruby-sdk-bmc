=begin
#IP Addresses API

#Public IP blocks are a set of contiguous IPs that allow you to access your servers or networks from the internet. Use the IP Addresses API to request and delete IP blocks.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/public-ip-management#bmc-public-ip-allocations-api' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/ips/v1/)</b> 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

# Common files
require 'pnap_ip_api/api_client'
require 'pnap_ip_api/api_error'
require 'pnap_ip_api/version'
require 'pnap_ip_api/configuration'

# Models
require 'pnap_ip_api/models/delete_ip_block_result'
require 'pnap_ip_api/models/error'
require 'pnap_ip_api/models/ip_block'
require 'pnap_ip_api/models/ip_block_create'
require 'pnap_ip_api/models/ip_block_patch'
require 'pnap_ip_api/models/tag_assignment'
require 'pnap_ip_api/models/tag_assignment_request'

# APIs
require 'pnap_ip_api/api/ip_blocks_api'

module IpApi
  class << self
    # Customize default settings for the SDK using block.
    #   IpApi.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
