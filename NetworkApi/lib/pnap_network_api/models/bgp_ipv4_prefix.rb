=begin
#Networks API

#Create, list, edit and delete public/private networks with the Network API. Use public networks to place multiple  servers on the same network or VLAN. Assign new servers with IP addresses from the same CIDR range. Use private  networks to avoid unnecessary egress data charges. Model your networks according to your business needs.<br> <br> <span class='pnap-api-knowledge-base-link'> Helpful knowledge base articles are available for  <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#multi-private-backend-network-api' target='_blank'>multi-private backend networks</a>,  <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#ftoc-heading-15' target='_blank'>public networks</a> and <a href='https://phoenixnap.com/kb/border-gateway-protocol-bmc' target='_blank'>border gateway protocol peer groups</a>. </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/networks/v1/)</b> 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'date'
require 'time'

module NetworkApi
  # The BGP IPv4 Prefix.
  class BgpIPv4Prefix
    # IPv4 allocation ID.
    attr_accessor :ipv4_allocation_id

    # The IP block in CIDR format.
    attr_accessor :cidr

    # The BGP IPv4 Prefix status. Can have one of the following values: `PENDING`, `BUSY`, `READY`, `ERROR` and `DELETING`.
    attr_accessor :status

    # Identifies IP as a `bring your own` IP block.
    attr_accessor :is_bring_your_own_ip

    # The Boolean value of the BGP IPv4 Prefix is in use.
    attr_accessor :in_use

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ipv4_allocation_id' => :'ipv4AllocationId',
        :'cidr' => :'cidr',
        :'status' => :'status',
        :'is_bring_your_own_ip' => :'isBringYourOwnIp',
        :'in_use' => :'inUse'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ipv4_allocation_id' => :'String',
        :'cidr' => :'String',
        :'status' => :'String',
        :'is_bring_your_own_ip' => :'Boolean',
        :'in_use' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NetworkApi::BgpIPv4Prefix` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NetworkApi::BgpIPv4Prefix`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ipv4_allocation_id')
        self.ipv4_allocation_id = attributes[:'ipv4_allocation_id']
      else
        self.ipv4_allocation_id = nil
      end

      if attributes.key?(:'cidr')
        self.cidr = attributes[:'cidr']
      else
        self.cidr = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'is_bring_your_own_ip')
        self.is_bring_your_own_ip = attributes[:'is_bring_your_own_ip']
      else
        self.is_bring_your_own_ip = nil
      end

      if attributes.key?(:'in_use')
        self.in_use = attributes[:'in_use']
      else
        self.in_use = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @ipv4_allocation_id.nil?
        invalid_properties.push('invalid value for "ipv4_allocation_id", ipv4_allocation_id cannot be nil.')
      end

      if @cidr.nil?
        invalid_properties.push('invalid value for "cidr", cidr cannot be nil.')
      end

      pattern = Regexp.new(/^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\/(?:[1-9]|[1-2]\d|3[0-2])$/)
      if @cidr !~ pattern
        invalid_properties.push("invalid value for \"cidr\", must conform to the pattern #{pattern}.")
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @is_bring_your_own_ip.nil?
        invalid_properties.push('invalid value for "is_bring_your_own_ip", is_bring_your_own_ip cannot be nil.')
      end

      if @in_use.nil?
        invalid_properties.push('invalid value for "in_use", in_use cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @ipv4_allocation_id.nil?
      return false if @cidr.nil?
      return false if @cidr !~ Regexp.new(/^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\/(?:[1-9]|[1-2]\d|3[0-2])$/)
      return false if @status.nil?
      return false if @is_bring_your_own_ip.nil?
      return false if @in_use.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] cidr Value to be assigned
    def cidr=(cidr)
      if cidr.nil?
        fail ArgumentError, 'cidr cannot be nil'
      end

      pattern = Regexp.new(/^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\/(?:[1-9]|[1-2]\d|3[0-2])$/)
      if cidr !~ pattern
        fail ArgumentError, "invalid value for \"cidr\", must conform to the pattern #{pattern}."
      end

      @cidr = cidr
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ipv4_allocation_id == o.ipv4_allocation_id &&
          cidr == o.cidr &&
          status == o.status &&
          is_bring_your_own_ip == o.is_bring_your_own_ip &&
          in_use == o.in_use
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ipv4_allocation_id, cidr, status, is_bring_your_own_ip, in_use].hash
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
        klass = NetworkApi.const_get(type)
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
