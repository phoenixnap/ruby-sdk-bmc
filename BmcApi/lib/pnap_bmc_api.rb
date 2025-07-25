=begin
#Bare Metal Cloud API

#Create, power off, power on, reset, reboot, or shut down your server with the Bare Metal Cloud API.  Deprovision servers, get or edit SSH key details, assign public IPs, assign servers to networks and a lot more.  Manage your infrastructure more efficiently using just a few simple API calls.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/how-to-deploy-bare-metal-cloud-server' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/bmc/v1/)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

# Common files
require 'pnap_bmc_api/api_client'
require 'pnap_bmc_api/api_error'
require 'pnap_bmc_api/version'
require 'pnap_bmc_api/configuration'

# Models
require 'pnap_bmc_api/models/action_result'
require 'pnap_bmc_api/models/delete_result'
require 'pnap_bmc_api/models/delete_ssh_key_result'
require 'pnap_bmc_api/models/error'
require 'pnap_bmc_api/models/esxi_datastore_configuration'
require 'pnap_bmc_api/models/esxi_os_configuration'
require 'pnap_bmc_api/models/gpu_configuration'
require 'pnap_bmc_api/models/ip_blocks_configuration'
require 'pnap_bmc_api/models/network_configuration'
require 'pnap_bmc_api/models/os_configuration'
require 'pnap_bmc_api/models/os_configuration_cloud_init'
require 'pnap_bmc_api/models/os_configuration_map'
require 'pnap_bmc_api/models/os_configuration_map_esxi'
require 'pnap_bmc_api/models/os_configuration_map_proxmox'
require 'pnap_bmc_api/models/os_configuration_netris_controller'
require 'pnap_bmc_api/models/os_configuration_netris_softgate'
require 'pnap_bmc_api/models/os_configuration_windows'
require 'pnap_bmc_api/models/private_network_configuration'
require 'pnap_bmc_api/models/public_network_configuration'
require 'pnap_bmc_api/models/quota'
require 'pnap_bmc_api/models/quota_edit_limit_request'
require 'pnap_bmc_api/models/quota_edit_limit_request_details'
require 'pnap_bmc_api/models/relinquish_ip_block'
require 'pnap_bmc_api/models/reservation_transfer_details'
require 'pnap_bmc_api/models/reset_result'
require 'pnap_bmc_api/models/server'
require 'pnap_bmc_api/models/server_create'
require 'pnap_bmc_api/models/server_ip_block'
require 'pnap_bmc_api/models/server_network_update'
require 'pnap_bmc_api/models/server_patch'
require 'pnap_bmc_api/models/server_private_network'
require 'pnap_bmc_api/models/server_provision'
require 'pnap_bmc_api/models/server_public_network'
require 'pnap_bmc_api/models/server_reserve'
require 'pnap_bmc_api/models/server_reset'
require 'pnap_bmc_api/models/ssh_key'
require 'pnap_bmc_api/models/ssh_key_create'
require 'pnap_bmc_api/models/ssh_key_update'
require 'pnap_bmc_api/models/storage_configuration'
require 'pnap_bmc_api/models/storage_configuration_root_partition'
require 'pnap_bmc_api/models/tag_assignment'
require 'pnap_bmc_api/models/tag_assignment_request'

# APIs
require 'pnap_bmc_api/api/quotas_api'
require 'pnap_bmc_api/api/ssh_keys_api'
require 'pnap_bmc_api/api/servers_api'

module BmcApi
  class << self
    # Customize default settings for the SDK using block.
    #   BmcApi.configure do |config|
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
