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
  # Details of the server product.
  class ServerProductMetadata
    # RAM in GB.
    attr_accessor :ram_in_gb

    # CPU name.
    attr_accessor :cpu

    # Number of CPUs.
    attr_accessor :cpu_count

    # The number of physical cores present on each CPU.
    attr_accessor :cores_per_cpu

    # CPU frequency in GHz.
    attr_accessor :cpu_frequency

    # Server network.
    attr_accessor :network

    # Server storage.
    attr_accessor :storage

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ram_in_gb' => :'ramInGb',
        :'cpu' => :'cpu',
        :'cpu_count' => :'cpuCount',
        :'cores_per_cpu' => :'coresPerCpu',
        :'cpu_frequency' => :'cpuFrequency',
        :'network' => :'network',
        :'storage' => :'storage'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ram_in_gb' => :'Float',
        :'cpu' => :'String',
        :'cpu_count' => :'Float',
        :'cores_per_cpu' => :'Float',
        :'cpu_frequency' => :'Float',
        :'network' => :'String',
        :'storage' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BillingApi::ServerProductMetadata` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BillingApi::ServerProductMetadata`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ram_in_gb')
        self.ram_in_gb = attributes[:'ram_in_gb']
      else
        self.ram_in_gb = nil
      end

      if attributes.key?(:'cpu')
        self.cpu = attributes[:'cpu']
      else
        self.cpu = nil
      end

      if attributes.key?(:'cpu_count')
        self.cpu_count = attributes[:'cpu_count']
      else
        self.cpu_count = nil
      end

      if attributes.key?(:'cores_per_cpu')
        self.cores_per_cpu = attributes[:'cores_per_cpu']
      else
        self.cores_per_cpu = nil
      end

      if attributes.key?(:'cpu_frequency')
        self.cpu_frequency = attributes[:'cpu_frequency']
      else
        self.cpu_frequency = nil
      end

      if attributes.key?(:'network')
        self.network = attributes[:'network']
      else
        self.network = nil
      end

      if attributes.key?(:'storage')
        self.storage = attributes[:'storage']
      else
        self.storage = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @ram_in_gb.nil?
        invalid_properties.push('invalid value for "ram_in_gb", ram_in_gb cannot be nil.')
      end

      if @cpu.nil?
        invalid_properties.push('invalid value for "cpu", cpu cannot be nil.')
      end

      if @cpu_count.nil?
        invalid_properties.push('invalid value for "cpu_count", cpu_count cannot be nil.')
      end

      if @cores_per_cpu.nil?
        invalid_properties.push('invalid value for "cores_per_cpu", cores_per_cpu cannot be nil.')
      end

      if @cpu_frequency.nil?
        invalid_properties.push('invalid value for "cpu_frequency", cpu_frequency cannot be nil.')
      end

      if @network.nil?
        invalid_properties.push('invalid value for "network", network cannot be nil.')
      end

      if @storage.nil?
        invalid_properties.push('invalid value for "storage", storage cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @ram_in_gb.nil?
      return false if @cpu.nil?
      return false if @cpu_count.nil?
      return false if @cores_per_cpu.nil?
      return false if @cpu_frequency.nil?
      return false if @network.nil?
      return false if @storage.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ram_in_gb == o.ram_in_gb &&
          cpu == o.cpu &&
          cpu_count == o.cpu_count &&
          cores_per_cpu == o.cores_per_cpu &&
          cpu_frequency == o.cpu_frequency &&
          network == o.network &&
          storage == o.storage
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ram_in_gb, cpu, cpu_count, cores_per_cpu, cpu_frequency, network, storage].hash
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
        klass = BillingApi.const_get(type)
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
