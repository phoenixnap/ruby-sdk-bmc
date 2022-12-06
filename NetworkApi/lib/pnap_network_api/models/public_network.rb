=begin
#Networks API

#Create, list, edit and delete public/private networks with the Network API. Use public networks to place multiple  servers on the same network or VLAN. Assign new servers with IP addresses from the same CIDR range. Use private  networks to avoid unnecessary egress data charges. Model your networks according to your business needs.<br> <br> <span class='pnap-api-knowledge-base-link'> Helpful knowledge base articles are available for  <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#multi-private-backend-network-api' target='_blank'>multi-private backend networks</a> and <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#ftoc-heading-15' target='_blank'>public networks</a>. </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/networks/v1/)</b> 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module NetworkApi
  # Public Network details.
  class PublicNetwork
    # The public network identifier.
    attr_accessor :id

    # The VLAN of this public network.
    attr_accessor :vlan_id

    # A list of resources that are members of this public network.
    attr_accessor :memberships

    # The friendly name of this public network.
    attr_accessor :name

    # The location of this public network. Supported values are `PHX`, `ASH`, `SGP`, `NLD`, `CHI`, `SEA` and `AUS`.
    attr_accessor :location

    # The description of this public network.
    attr_accessor :description

    # The status of the public network. Can have one of the following values: `BUSY` or `READY`.
    attr_accessor :status

    # Date and time when this public network was created.
    attr_accessor :created_on

    # A list of IP Blocks that are associated with this public network.
    attr_accessor :ip_blocks

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'vlan_id' => :'vlanId',
        :'memberships' => :'memberships',
        :'name' => :'name',
        :'location' => :'location',
        :'description' => :'description',
        :'status' => :'status',
        :'created_on' => :'createdOn',
        :'ip_blocks' => :'ipBlocks'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'vlan_id' => :'Integer',
        :'memberships' => :'Array<NetworkMembership>',
        :'name' => :'String',
        :'location' => :'String',
        :'description' => :'String',
        :'status' => :'String',
        :'created_on' => :'Time',
        :'ip_blocks' => :'Array<PublicNetworkIpBlock>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NetworkApi::PublicNetwork` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NetworkApi::PublicNetwork`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'vlan_id')
        self.vlan_id = attributes[:'vlan_id']
      end

      if attributes.key?(:'memberships')
        if (value = attributes[:'memberships']).is_a?(Array)
          self.memberships = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'ip_blocks')
        if (value = attributes[:'ip_blocks']).is_a?(Array)
          self.ip_blocks = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @vlan_id.nil?
        invalid_properties.push('invalid value for "vlan_id", vlan_id cannot be nil.')
      end

      if @memberships.nil?
        invalid_properties.push('invalid value for "memberships", memberships cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 100
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 100.')
      end

      if @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      if @location.nil?
        invalid_properties.push('invalid value for "location", location cannot be nil.')
      end

      if !@description.nil? && @description.to_s.length > 250
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 250.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @created_on.nil?
        invalid_properties.push('invalid value for "created_on", created_on cannot be nil.')
      end

      if @ip_blocks.nil?
        invalid_properties.push('invalid value for "ip_blocks", ip_blocks cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @vlan_id.nil?
      return false if @memberships.nil?
      return false if @name.nil?
      return false if @name.to_s.length > 100
      return false if @name.to_s.length < 1
      return false if @location.nil?
      return false if !@description.nil? && @description.to_s.length > 250
      return false if @status.nil?
      return false if @created_on.nil?
      return false if @ip_blocks.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 100
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 100.'
      end

      if name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 250
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 250.'
      end

      @description = description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          vlan_id == o.vlan_id &&
          memberships == o.memberships &&
          name == o.name &&
          location == o.location &&
          description == o.description &&
          status == o.status &&
          created_on == o.created_on &&
          ip_blocks == o.ip_blocks
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, vlan_id, memberships, name, location, description, status, created_on, ip_blocks].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
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
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
