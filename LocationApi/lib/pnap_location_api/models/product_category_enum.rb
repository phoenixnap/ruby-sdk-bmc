=begin
#Locations API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'date'
require 'time'

module LocationApi
  class ProductCategoryEnum
    SERVER = "SERVER".freeze
    BANDWIDTH = "BANDWIDTH".freeze
    OPERATING_SYSTEM = "OPERATING_SYSTEM".freeze
    PUBLIC_IP = "PUBLIC_IP".freeze
    STORAGE = "STORAGE".freeze

    def self.all_vars
      @all_vars ||= [SERVER, BANDWIDTH, OPERATING_SYSTEM, PUBLIC_IP, STORAGE].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if ProductCategoryEnum.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ProductCategoryEnum"
    end
  end
end
