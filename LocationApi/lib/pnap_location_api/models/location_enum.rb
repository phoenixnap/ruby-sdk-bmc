=begin
#Locations API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'date'
require 'time'

module LocationApi
  class LocationEnum
    PHX = "PHX".freeze
    ASH = "ASH".freeze
    NLD = "NLD".freeze
    SGP = "SGP".freeze
    CHI = "CHI".freeze
    SEA = "SEA".freeze
    AUS = "AUS".freeze

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
      constantValues = LocationEnum.constants.select { |c| LocationEnum::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #LocationEnum" if constantValues.empty?
      value
    end
  end
end
