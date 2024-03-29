=begin
#Bare Metal Cloud API

#Create, power off, power on, reset, reboot, or shut down your server with the Bare Metal Cloud API.  Deprovision servers, get or edit SSH key details, assign public IPs, assign servers to networks and a lot more.  Manage your infrastructure more efficiently using just a few simple API calls.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/how-to-deploy-bare-metal-cloud-server' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/bmc/v1/)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'date'
require 'time'

module BmcApi
  # Netris Softgate configuration properties. Follow <a href='https://phoenixnap.com/kb/netris-bare-metal-cloud#deploy-netris-softgate' target='_blank'>instructions</a> for retrieving the required details.
  class OsConfigurationNetrisSoftgate
    # (Read-only) Host OS on which the Netris Softgate is installed.
    attr_accessor :host_os

    # (Write-only) IP address or hostname through which to reach the Netris Controller.
    attr_accessor :controller_address

    # (Write-only) The version of the Netris Controller to connect to.
    attr_accessor :controller_version

    # (Write-only) The authentication key of the Netris Controller to connect to. Required for the softgate agent to be able to interact with the Netris Controller.
    attr_accessor :controller_auth_key

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'host_os' => :'hostOs',
        :'controller_address' => :'controllerAddress',
        :'controller_version' => :'controllerVersion',
        :'controller_auth_key' => :'controllerAuthKey'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'host_os' => :'String',
        :'controller_address' => :'String',
        :'controller_version' => :'String',
        :'controller_auth_key' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `BmcApi::OsConfigurationNetrisSoftgate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BmcApi::OsConfigurationNetrisSoftgate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'host_os')
        self.host_os = attributes[:'host_os']
      end

      if attributes.key?(:'controller_address')
        self.controller_address = attributes[:'controller_address']
      end

      if attributes.key?(:'controller_version')
        self.controller_version = attributes[:'controller_version']
      end

      if attributes.key?(:'controller_auth_key')
        self.controller_auth_key = attributes[:'controller_auth_key']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@controller_address.nil? && @controller_address.to_s.length > 253
        invalid_properties.push('invalid value for "controller_address", the character length must be smaller than or equal to 253.')
      end

      pattern = Regexp.new(/^(?!-)[\w\-]{1,63}(?<!-)(\.(?!-)[\w\-]{1,63}(?<!-))*$/)
      if !@controller_address.nil? && @controller_address !~ pattern
        invalid_properties.push("invalid value for \"controller_address\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^\S+$/)
      if !@controller_auth_key.nil? && @controller_auth_key !~ pattern
        invalid_properties.push("invalid value for \"controller_auth_key\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@controller_address.nil? && @controller_address.to_s.length > 253
      return false if !@controller_address.nil? && @controller_address !~ Regexp.new(/^(?!-)[\w\-]{1,63}(?<!-)(\.(?!-)[\w\-]{1,63}(?<!-))*$/)
      return false if !@controller_auth_key.nil? && @controller_auth_key !~ Regexp.new(/^\S+$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] controller_address Value to be assigned
    def controller_address=(controller_address)
      if controller_address.nil?
        fail ArgumentError, 'controller_address cannot be nil'
      end

      if controller_address.to_s.length > 253
        fail ArgumentError, 'invalid value for "controller_address", the character length must be smaller than or equal to 253.'
      end

      pattern = Regexp.new(/^(?!-)[\w\-]{1,63}(?<!-)(\.(?!-)[\w\-]{1,63}(?<!-))*$/)
      if controller_address !~ pattern
        fail ArgumentError, "invalid value for \"controller_address\", must conform to the pattern #{pattern}."
      end

      @controller_address = controller_address
    end

    # Custom attribute writer method with validation
    # @param [Object] controller_auth_key Value to be assigned
    def controller_auth_key=(controller_auth_key)
      if controller_auth_key.nil?
        fail ArgumentError, 'controller_auth_key cannot be nil'
      end

      pattern = Regexp.new(/^\S+$/)
      if controller_auth_key !~ pattern
        fail ArgumentError, "invalid value for \"controller_auth_key\", must conform to the pattern #{pattern}."
      end

      @controller_auth_key = controller_auth_key
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          host_os == o.host_os &&
          controller_address == o.controller_address &&
          controller_version == o.controller_version &&
          controller_auth_key == o.controller_auth_key
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [host_os, controller_address, controller_version, controller_auth_key].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = BmcApi.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
