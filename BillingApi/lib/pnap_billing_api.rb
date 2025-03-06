=begin
#Billing API

#Automate your infrastructure billing with the Bare Metal Cloud Billing API. Reserve your server instances to ensure guaranteed resource availability for 12, 24, and 36 months. Retrieve your server’s rated usage for a given period and enable or disable auto-renewals.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/phoenixnap-bare-metal-cloud-billing-models' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/billing/v1/)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

# Common files
require 'pnap_billing_api/api_client'
require 'pnap_billing_api/api_error'
require 'pnap_billing_api/version'
require 'pnap_billing_api/configuration'

# Models
require 'pnap_billing_api/models/applicable_discounts'
require 'pnap_billing_api/models/bandwidth_details'
require 'pnap_billing_api/models/bandwidth_record'
require 'pnap_billing_api/models/configuration_details'
require 'pnap_billing_api/models/credit_details'
require 'pnap_billing_api/models/credit_details_base'
require 'pnap_billing_api/models/credit_type_enum'
require 'pnap_billing_api/models/discount_details'
require 'pnap_billing_api/models/discount_type_enum'
require 'pnap_billing_api/models/error'
require 'pnap_billing_api/models/gpu_configuration_metadata'
require 'pnap_billing_api/models/location_availability_detail'
require 'pnap_billing_api/models/location_enum'
require 'pnap_billing_api/models/operating_system_details'
require 'pnap_billing_api/models/operating_system_record'
require 'pnap_billing_api/models/package_unit_enum'
require 'pnap_billing_api/models/price_unit_enum'
require 'pnap_billing_api/models/pricing_plan'
require 'pnap_billing_api/models/product'
require 'pnap_billing_api/models/product_availability'
require 'pnap_billing_api/models/product_category_enum'
require 'pnap_billing_api/models/products_get200_response_inner'
require 'pnap_billing_api/models/promo_credit_details'
require 'pnap_billing_api/models/public_subnet_details'
require 'pnap_billing_api/models/public_subnet_record'
require 'pnap_billing_api/models/rated_usage_get200_response_inner'
require 'pnap_billing_api/models/rated_usage_product_category_enum'
require 'pnap_billing_api/models/rated_usage_record'
require 'pnap_billing_api/models/reservation'
require 'pnap_billing_api/models/reservation_auto_renew_disable_request'
require 'pnap_billing_api/models/reservation_invoicing_model_enum'
require 'pnap_billing_api/models/reservation_model_enum'
require 'pnap_billing_api/models/reservation_product_category_enum'
require 'pnap_billing_api/models/reservation_request'
require 'pnap_billing_api/models/server_details'
require 'pnap_billing_api/models/server_product'
require 'pnap_billing_api/models/server_product_metadata'
require 'pnap_billing_api/models/server_record'
require 'pnap_billing_api/models/storage_details'
require 'pnap_billing_api/models/storage_record'
require 'pnap_billing_api/models/system_credit_cause_enum'
require 'pnap_billing_api/models/system_credit_details'
require 'pnap_billing_api/models/threshold_configuration_details'

# APIs
require 'pnap_billing_api/api/billing_configurations_api'
require 'pnap_billing_api/api/product_availability_api'
require 'pnap_billing_api/api/products_api'
require 'pnap_billing_api/api/rated_usage_api'
require 'pnap_billing_api/api/reservations_api'

module BillingApi
  class << self
    # Customize default settings for the SDK using block.
    #   BillingApi.configure do |config|
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
