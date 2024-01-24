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
  # Provision bare metal server.
  class ServerCreate
    # Hostname of server.
    attr_accessor :hostname

    # Description of server.
    attr_accessor :description

    # The server’s OS ID used when the server was created. Currently this field should be set to either `ubuntu/bionic`, `ubuntu/focal`, `ubuntu/jammy`, `centos/centos7`, `centos/centos8`, `windows/srv2019std`, `windows/srv2019dc`, `esxi/esxi70`, `esxi/esxi80`, `almalinux/almalinux8`, `rockylinux/rockylinux8`, `almalinux/almalinux9`, `rockylinux/rockylinux9`, `virtuozzo/virtuozzo7`, `debian/bullseye`, `debian/bookworm`, `proxmox/bullseye`, `netris/controller`, `netris/softgate_1g`, `netris/softgate_10g` or `netris/softgate_25g`.
    attr_accessor :os

    # Server type ID. Cannot be changed once a server is created. Currently this field should be set to either `s0.d1.small`, `s0.d1.medium`, `s1.c1.small`, `s1.c1.medium`, `s1.c2.medium`, `s1.c2.large`, `s1.e1.small`, `s1.e1.medium`, `s1.e1.large`, `s2.c1.small`, `s2.c1.medium`, `s2.c1.large`, `s2.c2.small`, `s2.c2.medium`, `s2.c2.large`, `d1.c1.small`, `d1.c2.small`, `d1.c3.small`, `d1.c4.small`, `d1.c1.medium`, `d1.c2.medium`, `d1.c3.medium`, `d1.c4.medium`, `d1.c1.large`, `d1.c2.large`, `d1.c3.large`, `d1.c4.large`, `d1.m1.medium`, `d1.m2.medium`, `d1.m3.medium`, `d1.m4.medium`, `d2.c1.medium`, `d2.c2.medium`, `d2.c3.medium`, `d2.c4.medium`, `d2.c5.medium`, `d2.c1.large`, `d2.c2.large`, `d2.c3.large`, `d2.c4.large`, `d2.c5.large`, `d2.m1.xlarge`, `d2.m2.xxlarge`, `d2.m3.xlarge`, `d2.m4.xlarge`, `d2.m5.xlarge`, `d2.c4.db1.pliops1`, `d3.m4.xlarge`, `d3.m5.xlarge`, `d3.m6.xlarge`, `a1.c5.large`, `d3.s5.xlarge`, `d3.m4.xxlarge`, `d3.m5.xxlarge` or `d3.m6.xxlarge`.
    attr_accessor :type

    # Server location ID. Cannot be changed once a server is created. Currently this field should be set to `PHX`, `ASH`, `SGP`, `NLD`, `CHI`, `SEA` or `AUS`.
    attr_accessor :location

    # Whether or not to install SSH keys marked as default in addition to any SSH keys specified in this request.
    attr_accessor :install_default_ssh_keys

    # A list of SSH keys that will be installed on the server.
    attr_accessor :ssh_keys

    # A list of SSH key IDs that will be installed on the server in addition to any SSH keys specified in this request.
    attr_accessor :ssh_key_ids

    # Server reservation ID.
    attr_accessor :reservation_id

    # Server pricing model. Currently this field should be set to `HOURLY`, `ONE_MONTH_RESERVATION`, `TWELVE_MONTHS_RESERVATION`, `TWENTY_FOUR_MONTHS_RESERVATION` or `THIRTY_SIX_MONTHS_RESERVATION`.
    attr_accessor :pricing_model

    # The type of network configuration for this server.<br> Currently this field should be set to `PUBLIC_AND_PRIVATE`, `PRIVATE_ONLY`, `PUBLIC_ONLY` or `USER_DEFINED`.<br> Setting the `force` query parameter to `true` allows you to configure network configuration type as `NONE`.
    attr_accessor :network_type

    attr_accessor :os_configuration

    # Tags to set to the server. To create a new tag or list all the existing tags that you can use, refer to [Tags API](https://developers.phoenixnap.com/docs/tags/1/overview).
    attr_accessor :tags

    attr_accessor :network_configuration

    attr_accessor :storage_configuration

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'hostname' => :'hostname',
        :'description' => :'description',
        :'os' => :'os',
        :'type' => :'type',
        :'location' => :'location',
        :'install_default_ssh_keys' => :'installDefaultSshKeys',
        :'ssh_keys' => :'sshKeys',
        :'ssh_key_ids' => :'sshKeyIds',
        :'reservation_id' => :'reservationId',
        :'pricing_model' => :'pricingModel',
        :'network_type' => :'networkType',
        :'os_configuration' => :'osConfiguration',
        :'tags' => :'tags',
        :'network_configuration' => :'networkConfiguration',
        :'storage_configuration' => :'storageConfiguration'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'hostname' => :'String',
        :'description' => :'String',
        :'os' => :'String',
        :'type' => :'String',
        :'location' => :'String',
        :'install_default_ssh_keys' => :'Boolean',
        :'ssh_keys' => :'Array<String>',
        :'ssh_key_ids' => :'Array<String>',
        :'reservation_id' => :'String',
        :'pricing_model' => :'String',
        :'network_type' => :'String',
        :'os_configuration' => :'OsConfiguration',
        :'tags' => :'Array<TagAssignmentRequest>',
        :'network_configuration' => :'NetworkConfiguration',
        :'storage_configuration' => :'StorageConfiguration'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BmcApi::ServerCreate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BmcApi::ServerCreate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'hostname')
        self.hostname = attributes[:'hostname']
      else
        self.hostname = nil
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'os')
        self.os = attributes[:'os']
      else
        self.os = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      else
        self.location = nil
      end

      if attributes.key?(:'install_default_ssh_keys')
        self.install_default_ssh_keys = attributes[:'install_default_ssh_keys']
      else
        self.install_default_ssh_keys = true
      end

      if attributes.key?(:'ssh_keys')
        if (value = attributes[:'ssh_keys']).is_a?(Array)
          self.ssh_keys = value
        end
      end

      if attributes.key?(:'ssh_key_ids')
        if (value = attributes[:'ssh_key_ids']).is_a?(Array)
          self.ssh_key_ids = value
        end
      end

      if attributes.key?(:'reservation_id')
        self.reservation_id = attributes[:'reservation_id']
      end

      if attributes.key?(:'pricing_model')
        self.pricing_model = attributes[:'pricing_model']
      else
        self.pricing_model = 'HOURLY'
      end

      if attributes.key?(:'network_type')
        self.network_type = attributes[:'network_type']
      else
        self.network_type = 'PUBLIC_AND_PRIVATE'
      end

      if attributes.key?(:'os_configuration')
        self.os_configuration = attributes[:'os_configuration']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'network_configuration')
        self.network_configuration = attributes[:'network_configuration']
      end

      if attributes.key?(:'storage_configuration')
        self.storage_configuration = attributes[:'storage_configuration']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @hostname.nil?
        invalid_properties.push('invalid value for "hostname", hostname cannot be nil.')
      end

      if @hostname.to_s.length > 100
        invalid_properties.push('invalid value for "hostname", the character length must be smaller than or equal to 100.')
      end

      if @hostname.to_s.length < 1
        invalid_properties.push('invalid value for "hostname", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^(?=.*[a-zA-Z])([a-zA-Z0-9().-])+$/)
      if @hostname !~ pattern
        invalid_properties.push("invalid value for \"hostname\", must conform to the pattern #{pattern}.")
      end

      if !@description.nil? && @description.to_s.length > 250
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 250.')
      end

      if @os.nil?
        invalid_properties.push('invalid value for "os", os cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @location.nil?
        invalid_properties.push('invalid value for "location", location cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @hostname.nil?
      return false if @hostname.to_s.length > 100
      return false if @hostname.to_s.length < 1
      return false if @hostname !~ Regexp.new(/^(?=.*[a-zA-Z])([a-zA-Z0-9().-])+$/)
      return false if !@description.nil? && @description.to_s.length > 250
      return false if @os.nil?
      return false if @type.nil?
      return false if @location.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] hostname Value to be assigned
    def hostname=(hostname)
      if hostname.nil?
        fail ArgumentError, 'hostname cannot be nil'
      end

      if hostname.to_s.length > 100
        fail ArgumentError, 'invalid value for "hostname", the character length must be smaller than or equal to 100.'
      end

      if hostname.to_s.length < 1
        fail ArgumentError, 'invalid value for "hostname", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^(?=.*[a-zA-Z])([a-zA-Z0-9().-])+$/)
      if hostname !~ pattern
        fail ArgumentError, "invalid value for \"hostname\", must conform to the pattern #{pattern}."
      end

      @hostname = hostname
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, 'description cannot be nil'
      end

      if description.to_s.length > 250
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 250.'
      end

      @description = description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          hostname == o.hostname &&
          description == o.description &&
          os == o.os &&
          type == o.type &&
          location == o.location &&
          install_default_ssh_keys == o.install_default_ssh_keys &&
          ssh_keys == o.ssh_keys &&
          ssh_key_ids == o.ssh_key_ids &&
          reservation_id == o.reservation_id &&
          pricing_model == o.pricing_model &&
          network_type == o.network_type &&
          os_configuration == o.os_configuration &&
          tags == o.tags &&
          network_configuration == o.network_configuration &&
          storage_configuration == o.storage_configuration
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [hostname, description, os, type, location, install_default_ssh_keys, ssh_keys, ssh_key_ids, reservation_id, pricing_model, network_type, os_configuration, tags, network_configuration, storage_configuration].hash
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
