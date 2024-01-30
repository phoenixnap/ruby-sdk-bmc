=begin
#Billing API

#Automate your infrastructure billing with the Bare Metal Cloud Billing API. Reserve your server instances to ensure guaranteed resource availability for 12, 24, and 36 months. Retrieve your server’s rated usage for a given period and enable or disable auto-renewals.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/phoenixnap-bare-metal-cloud-billing-models' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/billing/v1/)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'date'
require 'time'

module BillingApi
module ProductsGet200ResponseInner
class << self
# List of class defined in oneOf (OpenAPI v3)
def openapi_one_of
[
:'Product',
:'ServerProduct'
]
end

# Discriminator's property name (OpenAPI v3)
def openapi_discriminator_name
:productCategory
end

# Discriminator's mapping (OpenAPI v3)
def openapi_discriminator_mapping
{
:'BANDWIDTH' => :'Product',
:'OPERATING_SYSTEM' => :'Product',
:'PUBLIC_IP' => :'Product',
:'SERVER' => :'ServerProduct',
:'STORAGE' => :'Product'
}
end

# Builds the object
# @param [Mixed] Data to be matched against the list of oneOf items
# @return [Object] Returns the model or the data itself
def build(data)
discriminator_value = data[openapi_discriminator_name]
return nil if discriminator_value.nil?

klass = openapi_discriminator_mapping[discriminator_value.to_s.to_sym]
return nil unless klass

BillingApi.const_get(klass).build_from_hash(data)
end
end
end

end
