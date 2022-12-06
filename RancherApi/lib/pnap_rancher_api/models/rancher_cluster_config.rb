=begin
#Rancher Solution API

#Simplify enterprise-grade Kubernetes cluster operations and management with Rancher on Bare Metal Cloud. Deploy Kubernetes clusters using a few API calls.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/rancher-bmc-integration-kubernetes' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/solutions/rancher/v1beta)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module RancherApi
  # (Write-only) Rancher configuration parameters.
  class RancherClusterConfig
    # Shared secret used to join a server or agent to a cluster.
    attr_accessor :token

    # This maps to ranchers `tls-san`. Add additional hostname or IP as a Subject Alternative Name in the TLS cert.
    attr_accessor :tls_san

    # This maps to ranchers `etcd-snapshot-schedule-cron`. Snapshot interval time in cron spec. eg. every 5 hours ‘0 */5 * * *’. Default: at 12 am/pm
    attr_accessor :etcd_snapshot_schedule_cron

    # This maps to ranchers `etcd-snapshot-retention`. Number of snapshots to retain.
    attr_accessor :etcd_snapshot_retention

    # This maps to ranchers `node-taint`. Registering kubelet with set of taints. By default, server nodes will be schedulable and thus your workloads can get launched on them. If you wish to have a dedicated control plane where no user workloads will run, you can use taints.
    attr_accessor :node_taint

    # This maps to ranchers `cluster-domain`. Cluster Domain.
    attr_accessor :cluster_domain

    attr_accessor :certificates

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'token' => :'token',
        :'tls_san' => :'tlsSan',
        :'etcd_snapshot_schedule_cron' => :'etcdSnapshotScheduleCron',
        :'etcd_snapshot_retention' => :'etcdSnapshotRetention',
        :'node_taint' => :'nodeTaint',
        :'cluster_domain' => :'clusterDomain',
        :'certificates' => :'certificates'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'token' => :'String',
        :'tls_san' => :'String',
        :'etcd_snapshot_schedule_cron' => :'String',
        :'etcd_snapshot_retention' => :'Integer',
        :'node_taint' => :'String',
        :'cluster_domain' => :'String',
        :'certificates' => :'RancherClusterConfigCertificates'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `RancherApi::RancherClusterConfig` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `RancherApi::RancherClusterConfig`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.key?(:'tls_san')
        self.tls_san = attributes[:'tls_san']
      end

      if attributes.key?(:'etcd_snapshot_schedule_cron')
        self.etcd_snapshot_schedule_cron = attributes[:'etcd_snapshot_schedule_cron']
      else
        self.etcd_snapshot_schedule_cron = '0 0,12 * * *'
      end

      if attributes.key?(:'etcd_snapshot_retention')
        self.etcd_snapshot_retention = attributes[:'etcd_snapshot_retention']
      else
        self.etcd_snapshot_retention = 5
      end

      if attributes.key?(:'node_taint')
        self.node_taint = attributes[:'node_taint']
      end

      if attributes.key?(:'cluster_domain')
        self.cluster_domain = attributes[:'cluster_domain']
      end

      if attributes.key?(:'certificates')
        self.certificates = attributes[:'certificates']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          token == o.token &&
          tls_san == o.tls_san &&
          etcd_snapshot_schedule_cron == o.etcd_snapshot_schedule_cron &&
          etcd_snapshot_retention == o.etcd_snapshot_retention &&
          node_taint == o.node_taint &&
          cluster_domain == o.cluster_domain &&
          certificates == o.certificates
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [token, tls_san, etcd_snapshot_schedule_cron, etcd_snapshot_retention, node_taint, cluster_domain, certificates].hash
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
        klass = RancherApi.const_get(type)
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
