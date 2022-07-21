=begin
#Bare Metal Cloud API

#Create, power off, power on, reset, reboot, or shut down your server with the Bare Metal Cloud API.  Deprovision servers, get or edit SSH key details, assign public IPs, assign servers to networks and a lot more.  Manage your infrastructure more efficiently using just a few simple API calls.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/how-to-deploy-bare-metal-cloud-server' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/bmc/v1/)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module BmcApi
  # Bare metal server.
  class Server
    # The unique identifier of the server.
    attr_accessor :id

    # The status of the server.
    attr_accessor :status

    # Hostname of server.
    attr_accessor :hostname

    # Description of server.
    attr_accessor :description

    # The server’s OS ID used when the server was created. Currently this field should be set to either `ubuntu/bionic`, `ubuntu/focal`, `centos/centos7`, `centos/centos8`, `windows/srv2019std`, `windows/srv2019dc`, `esxi/esxi70u2`, `debian/bullseye` or `proxmox/bullseye`.
    attr_accessor :os

    # Server type ID. Cannot be changed once a server is created. Currently this field should be set to either `s0.d1.small`, `s0.d1.medium`, `s1.c1.small`, `s1.c1.medium`, `s1.c2.medium`, `s1.c2.large`, `s1.e1.small`, `s1.e1.medium`, `s1.e1.large`, `s2.c1.small`, `s2.c1.medium`, `s2.c1.large`, `s2.c2.small`, `s2.c2.medium`, `s2.c2.large`, `d1.c1.small`, `d1.c2.small`, `d1.c3.small`, `d1.c4.small`, `d1.c1.medium`, `d1.c2.medium`, `d1.c3.medium`, `d1.c4.medium`, `d1.c1.large`, `d1.c2.large`, `d1.c3.large`, `d1.c4.large`, `d1.m1.medium`, `d1.m2.medium`, `d1.m3.medium`, `d1.m4.medium`, `d2.c1.medium`, `d2.c2.medium`, `d2.c3.medium`, `d2.c4.medium`, `d2.c5.medium`, `d2.c1.large`, `d2.c2.large`, `d2.c3.large`, `d2.c4.large`, `d2.c5.large`, `d2.m1.medium`, `d2.m1.large`, `d2.m2.medium`, `d2.m2.large`, `d2.m2.xlarge` or `d2.c4.storage.pliops1`.
    attr_accessor :type

    # Server location ID. Cannot be changed once a server is created. Currently this field should be set to `PHX`, `ASH`, `SGP`, `NLD`, `CHI`, `SEA` or `AUS`.
    attr_accessor :location

    # A description of the machine CPU.
    attr_accessor :cpu

    # The number of CPUs available in the system.
    attr_accessor :cpu_count

    # The number of physical cores present on each CPU.
    attr_accessor :cores_per_cpu

    # The CPU frequency in GHz.
    attr_accessor :cpu_frequency

    # A description of the machine RAM.
    attr_accessor :ram

    # A description of the machine storage.
    attr_accessor :storage

    # Private IP addresses assigned to server.
    attr_accessor :private_ip_addresses

    # Public IP addresses assigned to server.
    attr_accessor :public_ip_addresses

    # The reservation reference id if any.
    attr_accessor :reservation_id

    # The pricing model this server is being billed. Currently this field should be set to `HOURLY`, `ONE_MONTH_RESERVATION`, `TWELVE_MONTHS_RESERVATION`, `TWENTY_FOUR_MONTHS_RESERVATION` or `THIRTY_SIX_MONTHS_RESERVATION`.
    attr_accessor :pricing_model

    # Password set for user Admin on Windows server or user root on ESXi server which will only be returned in response to provisioning a server.
    attr_accessor :password

    # The type of network configuration for this server. Currently this field should be set to `PUBLIC_AND_PRIVATE` or `PRIVATE_ONLY`.
    attr_accessor :network_type

    # The cluster reference id if any.
    attr_accessor :cluster_id

    # The tags assigned if any.
    attr_accessor :tags

    # Date and time when server was provisioned.
    attr_accessor :provisioned_on

    attr_accessor :os_configuration

    attr_accessor :network_configuration

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'status' => :'status',
        :'hostname' => :'hostname',
        :'description' => :'description',
        :'os' => :'os',
        :'type' => :'type',
        :'location' => :'location',
        :'cpu' => :'cpu',
        :'cpu_count' => :'cpuCount',
        :'cores_per_cpu' => :'coresPerCpu',
        :'cpu_frequency' => :'cpuFrequency',
        :'ram' => :'ram',
        :'storage' => :'storage',
        :'private_ip_addresses' => :'privateIpAddresses',
        :'public_ip_addresses' => :'publicIpAddresses',
        :'reservation_id' => :'reservationId',
        :'pricing_model' => :'pricingModel',
        :'password' => :'password',
        :'network_type' => :'networkType',
        :'cluster_id' => :'clusterId',
        :'tags' => :'tags',
        :'provisioned_on' => :'provisionedOn',
        :'os_configuration' => :'osConfiguration',
        :'network_configuration' => :'networkConfiguration'
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
        :'status' => :'String',
        :'hostname' => :'String',
        :'description' => :'String',
        :'os' => :'String',
        :'type' => :'String',
        :'location' => :'String',
        :'cpu' => :'String',
        :'cpu_count' => :'Integer',
        :'cores_per_cpu' => :'Integer',
        :'cpu_frequency' => :'Float',
        :'ram' => :'String',
        :'storage' => :'String',
        :'private_ip_addresses' => :'Array<String>',
        :'public_ip_addresses' => :'Array<String>',
        :'reservation_id' => :'String',
        :'pricing_model' => :'String',
        :'password' => :'String',
        :'network_type' => :'String',
        :'cluster_id' => :'String',
        :'tags' => :'Array<TagAssignment>',
        :'provisioned_on' => :'Time',
        :'os_configuration' => :'OsConfiguration',
        :'network_configuration' => :'NetworkConfiguration'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BmcApi::Server` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BmcApi::Server`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'hostname')
        self.hostname = attributes[:'hostname']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'os')
        self.os = attributes[:'os']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'cpu')
        self.cpu = attributes[:'cpu']
      end

      if attributes.key?(:'cpu_count')
        self.cpu_count = attributes[:'cpu_count']
      end

      if attributes.key?(:'cores_per_cpu')
        self.cores_per_cpu = attributes[:'cores_per_cpu']
      end

      if attributes.key?(:'cpu_frequency')
        self.cpu_frequency = attributes[:'cpu_frequency']
      end

      if attributes.key?(:'ram')
        self.ram = attributes[:'ram']
      end

      if attributes.key?(:'storage')
        self.storage = attributes[:'storage']
      end

      if attributes.key?(:'private_ip_addresses')
        if (value = attributes[:'private_ip_addresses']).is_a?(Array)
          self.private_ip_addresses = value
        end
      end

      if attributes.key?(:'public_ip_addresses')
        if (value = attributes[:'public_ip_addresses']).is_a?(Array)
          self.public_ip_addresses = value
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

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'network_type')
        self.network_type = attributes[:'network_type']
      else
        self.network_type = 'PUBLIC_AND_PRIVATE'
      end

      if attributes.key?(:'cluster_id')
        self.cluster_id = attributes[:'cluster_id']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'provisioned_on')
        self.provisioned_on = attributes[:'provisioned_on']
      end

      if attributes.key?(:'os_configuration')
        self.os_configuration = attributes[:'os_configuration']
      end

      if attributes.key?(:'network_configuration')
        self.network_configuration = attributes[:'network_configuration']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

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

      if @cpu.nil?
        invalid_properties.push('invalid value for "cpu", cpu cannot be nil.')
      end

      if @cpu_count.nil?
        invalid_properties.push('invalid value for "cpu_count", cpu_count cannot be nil.')
      end

      if @cpu_count < 1
        invalid_properties.push('invalid value for "cpu_count", must be greater than or equal to 1.')
      end

      if @cores_per_cpu.nil?
        invalid_properties.push('invalid value for "cores_per_cpu", cores_per_cpu cannot be nil.')
      end

      if @cores_per_cpu < 1
        invalid_properties.push('invalid value for "cores_per_cpu", must be greater than or equal to 1.')
      end

      if @cpu_frequency.nil?
        invalid_properties.push('invalid value for "cpu_frequency", cpu_frequency cannot be nil.')
      end

      if @cpu_frequency < 0
        invalid_properties.push('invalid value for "cpu_frequency", must be greater than or equal to 0.')
      end

      if @ram.nil?
        invalid_properties.push('invalid value for "ram", ram cannot be nil.')
      end

      if @storage.nil?
        invalid_properties.push('invalid value for "storage", storage cannot be nil.')
      end

      if @private_ip_addresses.nil?
        invalid_properties.push('invalid value for "private_ip_addresses", private_ip_addresses cannot be nil.')
      end

      if @private_ip_addresses.length < 1
        invalid_properties.push('invalid value for "private_ip_addresses", number of items must be greater than or equal to 1.')
      end

      if @public_ip_addresses.nil?
        invalid_properties.push('invalid value for "public_ip_addresses", public_ip_addresses cannot be nil.')
      end

      if @public_ip_addresses.length < 1
        invalid_properties.push('invalid value for "public_ip_addresses", number of items must be greater than or equal to 1.')
      end

      if @pricing_model.nil?
        invalid_properties.push('invalid value for "pricing_model", pricing_model cannot be nil.')
      end

      if @network_configuration.nil?
        invalid_properties.push('invalid value for "network_configuration", network_configuration cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @status.nil?
      return false if @hostname.nil?
      return false if @hostname.to_s.length > 100
      return false if @hostname.to_s.length < 1
      return false if @hostname !~ Regexp.new(/^(?=.*[a-zA-Z])([a-zA-Z0-9().-])+$/)
      return false if !@description.nil? && @description.to_s.length > 250
      return false if @os.nil?
      return false if @type.nil?
      return false if @location.nil?
      return false if @cpu.nil?
      return false if @cpu_count.nil?
      return false if @cpu_count < 1
      return false if @cores_per_cpu.nil?
      return false if @cores_per_cpu < 1
      return false if @cpu_frequency.nil?
      return false if @cpu_frequency < 0
      return false if @ram.nil?
      return false if @storage.nil?
      return false if @private_ip_addresses.nil?
      return false if @private_ip_addresses.length < 1
      return false if @public_ip_addresses.nil?
      return false if @public_ip_addresses.length < 1
      return false if @pricing_model.nil?
      return false if @network_configuration.nil?
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
      if !description.nil? && description.to_s.length > 250
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 250.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] cpu_count Value to be assigned
    def cpu_count=(cpu_count)
      if cpu_count.nil?
        fail ArgumentError, 'cpu_count cannot be nil'
      end

      if cpu_count < 1
        fail ArgumentError, 'invalid value for "cpu_count", must be greater than or equal to 1.'
      end

      @cpu_count = cpu_count
    end

    # Custom attribute writer method with validation
    # @param [Object] cores_per_cpu Value to be assigned
    def cores_per_cpu=(cores_per_cpu)
      if cores_per_cpu.nil?
        fail ArgumentError, 'cores_per_cpu cannot be nil'
      end

      if cores_per_cpu < 1
        fail ArgumentError, 'invalid value for "cores_per_cpu", must be greater than or equal to 1.'
      end

      @cores_per_cpu = cores_per_cpu
    end

    # Custom attribute writer method with validation
    # @param [Object] cpu_frequency Value to be assigned
    def cpu_frequency=(cpu_frequency)
      if cpu_frequency.nil?
        fail ArgumentError, 'cpu_frequency cannot be nil'
      end

      if cpu_frequency < 0
        fail ArgumentError, 'invalid value for "cpu_frequency", must be greater than or equal to 0.'
      end

      @cpu_frequency = cpu_frequency
    end

    # Custom attribute writer method with validation
    # @param [Object] private_ip_addresses Value to be assigned
    def private_ip_addresses=(private_ip_addresses)
      if private_ip_addresses.nil?
        fail ArgumentError, 'private_ip_addresses cannot be nil'
      end

      if private_ip_addresses.length < 1
        fail ArgumentError, 'invalid value for "private_ip_addresses", number of items must be greater than or equal to 1.'
      end

      @private_ip_addresses = private_ip_addresses
    end

    # Custom attribute writer method with validation
    # @param [Object] public_ip_addresses Value to be assigned
    def public_ip_addresses=(public_ip_addresses)
      if public_ip_addresses.nil?
        fail ArgumentError, 'public_ip_addresses cannot be nil'
      end

      if public_ip_addresses.length < 1
        fail ArgumentError, 'invalid value for "public_ip_addresses", number of items must be greater than or equal to 1.'
      end

      @public_ip_addresses = public_ip_addresses
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          status == o.status &&
          hostname == o.hostname &&
          description == o.description &&
          os == o.os &&
          type == o.type &&
          location == o.location &&
          cpu == o.cpu &&
          cpu_count == o.cpu_count &&
          cores_per_cpu == o.cores_per_cpu &&
          cpu_frequency == o.cpu_frequency &&
          ram == o.ram &&
          storage == o.storage &&
          private_ip_addresses == o.private_ip_addresses &&
          public_ip_addresses == o.public_ip_addresses &&
          reservation_id == o.reservation_id &&
          pricing_model == o.pricing_model &&
          password == o.password &&
          network_type == o.network_type &&
          cluster_id == o.cluster_id &&
          tags == o.tags &&
          provisioned_on == o.provisioned_on &&
          os_configuration == o.os_configuration &&
          network_configuration == o.network_configuration
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, status, hostname, description, os, type, location, cpu, cpu_count, cores_per_cpu, cpu_frequency, ram, storage, private_ip_addresses, public_ip_addresses, reservation_id, pricing_model, password, network_type, cluster_id, tags, provisioned_on, os_configuration, network_configuration].hash
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
        klass = BmcApi.const_get(type)
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
