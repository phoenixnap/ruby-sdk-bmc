=begin
#Invoicing API

#List, fetch and pay invoices with the Invoicing API. 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

def get_version()
    return File.read(File.expand_path('../../../VERSION', __FILE__)).strip
end

module InvoicingApi
  VERSION = get_version()
end