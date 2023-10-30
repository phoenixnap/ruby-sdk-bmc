=begin
#Network Storage API

#Create, list, edit, and delete storage networks with the Network Storage API. Use storage networks to expand storage capacity on a private network. <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/bare-metal-cloud-storage' target='_blank'>here</a> </span> <br> <b>All URLs are relative to (https://api.phoenixnap.com/network-storage/v1/)</b> 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'date'
require 'time'

module NetworkStorageApi
  # Create Volume.
  class VolumeCreate
    # Volume friendly name.
    attr_accessor :name

    # Volume description.
    attr_accessor :description

    # Last part of volume's path.
    attr_accessor :path_suffix

    # Capacity of Volume in GB. Currently only whole numbers and multiples of 1000GB are supported.
    attr_accessor :capacity_in_gb

    attr_accessor :permissions

    # Tags to set to the resource. To create a new tag or list all the existing tags that you can use, refer to [Tags API](https://developers.phoenixnap.com/docs/tags/1/overview).
    attr_accessor :tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'description' => :'description',
        :'path_suffix' => :'pathSuffix',
        :'capacity_in_gb' => :'capacityInGb',
        :'permissions' => :'permissions',
        :'tags' => :'tags'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'description' => :'String',
        :'path_suffix' => :'String',
        :'capacity_in_gb' => :'Integer',
        :'permissions' => :'PermissionsCreate',
        :'tags' => :'Array<TagAssignmentRequest>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NetworkStorageApi::VolumeCreate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NetworkStorageApi::VolumeCreate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'path_suffix')
        self.path_suffix = attributes[:'path_suffix']
      end

      if attributes.key?(:'capacity_in_gb')
        self.capacity_in_gb = attributes[:'capacity_in_gb']
      end

      if attributes.key?(:'permissions')
        self.permissions = attributes[:'permissions']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 100
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 100.')
      end

      if @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @name !~ pattern
        invalid_properties.push("invalid value for \"name\", must conform to the pattern #{pattern}.")
      end

      if !@description.nil? && @description.to_s.length > 250
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 250.')
      end

      if !@path_suffix.nil? && @path_suffix.to_s.length > 27
        invalid_properties.push('invalid value for "path_suffix", the character length must be smaller than or equal to 27.')
      end

      if !@path_suffix.nil? && @path_suffix.to_s.length < 0
        invalid_properties.push('invalid value for "path_suffix", the character length must be great than or equal to 0.')
      end

      pattern = Regexp.new(/^(\/[\w-]+)+$|^$/)
      if !@path_suffix.nil? && @path_suffix !~ pattern
        invalid_properties.push("invalid value for \"path_suffix\", must conform to the pattern #{pattern}.")
      end

      if @capacity_in_gb.nil?
        invalid_properties.push('invalid value for "capacity_in_gb", capacity_in_gb cannot be nil.')
      end

      if @capacity_in_gb < 1000
        invalid_properties.push('invalid value for "capacity_in_gb", must be greater than or equal to 1000.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 100
      return false if @name.to_s.length < 1
      return false if @name !~ Regexp.new(/^(?!\s*$).+/)
      return false if !@description.nil? && @description.to_s.length > 250
      return false if !@path_suffix.nil? && @path_suffix.to_s.length > 27
      return false if !@path_suffix.nil? && @path_suffix.to_s.length < 0
      return false if !@path_suffix.nil? && @path_suffix !~ Regexp.new(/^(\/[\w-]+)+$|^$/)
      return false if @capacity_in_gb.nil?
      return false if @capacity_in_gb < 1000
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

      pattern = Regexp.new(/^(?!\s*$).+/)
      if name !~ pattern
        fail ArgumentError, "invalid value for \"name\", must conform to the pattern #{pattern}."
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

    # Custom attribute writer method with validation
    # @param [Object] path_suffix Value to be assigned
    def path_suffix=(path_suffix)
      if !path_suffix.nil? && path_suffix.to_s.length > 27
        fail ArgumentError, 'invalid value for "path_suffix", the character length must be smaller than or equal to 27.'
      end

      if !path_suffix.nil? && path_suffix.to_s.length < 0
        fail ArgumentError, 'invalid value for "path_suffix", the character length must be great than or equal to 0.'
      end

      pattern = Regexp.new(/^(\/[\w-]+)+$|^$/)
      if !path_suffix.nil? && path_suffix !~ pattern
        fail ArgumentError, "invalid value for \"path_suffix\", must conform to the pattern #{pattern}."
      end

      @path_suffix = path_suffix
    end

    # Custom attribute writer method with validation
    # @param [Object] capacity_in_gb Value to be assigned
    def capacity_in_gb=(capacity_in_gb)
      if capacity_in_gb.nil?
        fail ArgumentError, 'capacity_in_gb cannot be nil'
      end

      if capacity_in_gb < 1000
        fail ArgumentError, 'invalid value for "capacity_in_gb", must be greater than or equal to 1000.'
      end

      @capacity_in_gb = capacity_in_gb
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          description == o.description &&
          path_suffix == o.path_suffix &&
          capacity_in_gb == o.capacity_in_gb &&
          permissions == o.permissions &&
          tags == o.tags
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, description, path_suffix, capacity_in_gb, permissions, tags].hash
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
        klass = NetworkStorageApi.const_get(type)
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
