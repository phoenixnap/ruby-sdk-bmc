=begin
#Locations API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

def get_version()
    return File.read(File.expand_path('../../../VERSION', __FILE__)).strip
end

module LocationApi
  VERSION = get_version()
end