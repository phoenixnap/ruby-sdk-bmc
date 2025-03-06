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
  # The Border Gateway Protocol (BGP) Peer Group.
  class BgpPeerGroup
    # The unique identifier of the BGP Peer Group.
    attr_accessor :id

    # The BGP Peer Group status. Can have one of the following values: `PENDING`, `ON_HOLD`, `BUSY`, `READY`, `ERROR`, `PENDING_DELETION` and `DELETING`.
    attr_accessor :status

    # The BGP Peer Group location. Can have one of the following values: `PHX`, `ASH`, `SGP`, `NLD`, `CHI`, `SEA` and `AUS`.
    attr_accessor :location

    # The List of the BGP Peer Group IPv4 prefixes.
    attr_accessor :ipv4_prefixes

    attr_accessor :target_asn_details

    attr_accessor :active_asn_details

    # The BGP Peer Group password.
    attr_accessor :password

    # The Advertised routes for the BGP Peer Group. Can have one of the following values: `DEFAULT` and `NONE`.
    attr_accessor :advertised_routes

    # The RPKI ROA Origin ASN of the BGP Peer Group based on location.
    attr_accessor :rpki_roa_origin_asn

    # The eBGP Multi-hop of the BGP Peer Group.
    attr_accessor :e_bgp_multi_hop

    # The IPv4 Peering Loopback addresses of the BGP Peer Group. Valid IP formats are IPv4 addresses.
    attr_accessor :peering_loopbacks_v4

    # The Keep Alive Timer in seconds of the BGP Peer Group.
    attr_accessor :keep_alive_timer_seconds

    # The Hold Timer in seconds of the BGP Peer Group.
    attr_accessor :hold_timer_seconds

    # Date and time of creation.
    attr_accessor :created_on

    # Date and time of last update.
    attr_accessor :last_updated_on

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'status' => :'status',
        :'location' => :'location',
        :'ipv4_prefixes' => :'ipv4Prefixes',
        :'target_asn_details' => :'targetAsnDetails',
        :'active_asn_details' => :'activeAsnDetails',
        :'password' => :'password',
        :'advertised_routes' => :'advertisedRoutes',
        :'rpki_roa_origin_asn' => :'rpkiRoaOriginAsn',
        :'e_bgp_multi_hop' => :'eBgpMultiHop',
        :'peering_loopbacks_v4' => :'peeringLoopbacksV4',
        :'keep_alive_timer_seconds' => :'keepAliveTimerSeconds',
        :'hold_timer_seconds' => :'holdTimerSeconds',
        :'created_on' => :'createdOn',
        :'last_updated_on' => :'lastUpdatedOn'
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
        :'location' => :'String',
        :'ipv4_prefixes' => :'Array<BgpIPv4Prefix>',
        :'target_asn_details' => :'AsnDetails',
        :'active_asn_details' => :'AsnDetails',
        :'password' => :'String',
        :'advertised_routes' => :'String',
        :'rpki_roa_origin_asn' => :'Integer',
        :'e_bgp_multi_hop' => :'Integer',
        :'peering_loopbacks_v4' => :'Array<String>',
        :'keep_alive_timer_seconds' => :'Integer',
        :'hold_timer_seconds' => :'Integer',
        :'created_on' => :'String',
        :'last_updated_on' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NetworkApi::BgpPeerGroup` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NetworkApi::BgpPeerGroup`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      else
        self.location = nil
      end

      if attributes.key?(:'ipv4_prefixes')
        if (value = attributes[:'ipv4_prefixes']).is_a?(Array)
          self.ipv4_prefixes = value
        end
      else
        self.ipv4_prefixes = nil
      end

      if attributes.key?(:'target_asn_details')
        self.target_asn_details = attributes[:'target_asn_details']
      else
        self.target_asn_details = nil
      end

      if attributes.key?(:'active_asn_details')
        self.active_asn_details = attributes[:'active_asn_details']
      end

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      else
        self.password = nil
      end

      if attributes.key?(:'advertised_routes')
        self.advertised_routes = attributes[:'advertised_routes']
      else
        self.advertised_routes = nil
      end

      if attributes.key?(:'rpki_roa_origin_asn')
        self.rpki_roa_origin_asn = attributes[:'rpki_roa_origin_asn']
      else
        self.rpki_roa_origin_asn = nil
      end

      if attributes.key?(:'e_bgp_multi_hop')
        self.e_bgp_multi_hop = attributes[:'e_bgp_multi_hop']
      else
        self.e_bgp_multi_hop = nil
      end

      if attributes.key?(:'peering_loopbacks_v4')
        if (value = attributes[:'peering_loopbacks_v4']).is_a?(Array)
          self.peering_loopbacks_v4 = value
        end
      else
        self.peering_loopbacks_v4 = nil
      end

      if attributes.key?(:'keep_alive_timer_seconds')
        self.keep_alive_timer_seconds = attributes[:'keep_alive_timer_seconds']
      else
        self.keep_alive_timer_seconds = nil
      end

      if attributes.key?(:'hold_timer_seconds')
        self.hold_timer_seconds = attributes[:'hold_timer_seconds']
      else
        self.hold_timer_seconds = nil
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'last_updated_on')
        self.last_updated_on = attributes[:'last_updated_on']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @location.nil?
        invalid_properties.push('invalid value for "location", location cannot be nil.')
      end

      if @ipv4_prefixes.nil?
        invalid_properties.push('invalid value for "ipv4_prefixes", ipv4_prefixes cannot be nil.')
      end

      if @target_asn_details.nil?
        invalid_properties.push('invalid value for "target_asn_details", target_asn_details cannot be nil.')
      end

      if @password.nil?
        invalid_properties.push('invalid value for "password", password cannot be nil.')
      end

      if @password.to_s.length > 32
        invalid_properties.push('invalid value for "password", the character length must be smaller than or equal to 32.')
      end

      if @password.to_s.length < 8
        invalid_properties.push('invalid value for "password", the character length must be great than or equal to 8.')
      end

      pattern = Regexp.new(/^[a-zA-Z0-9!@#$%^&*()\-|\[\]{}=;:<>,.]+$/)
      if @password !~ pattern
        invalid_properties.push("invalid value for \"password\", must conform to the pattern #{pattern}.")
      end

      if @advertised_routes.nil?
        invalid_properties.push('invalid value for "advertised_routes", advertised_routes cannot be nil.')
      end

      if @rpki_roa_origin_asn.nil?
        invalid_properties.push('invalid value for "rpki_roa_origin_asn", rpki_roa_origin_asn cannot be nil.')
      end

      if @e_bgp_multi_hop.nil?
        invalid_properties.push('invalid value for "e_bgp_multi_hop", e_bgp_multi_hop cannot be nil.')
      end

      if @peering_loopbacks_v4.nil?
        invalid_properties.push('invalid value for "peering_loopbacks_v4", peering_loopbacks_v4 cannot be nil.')
      end

      if @keep_alive_timer_seconds.nil?
        invalid_properties.push('invalid value for "keep_alive_timer_seconds", keep_alive_timer_seconds cannot be nil.')
      end

      if @hold_timer_seconds.nil?
        invalid_properties.push('invalid value for "hold_timer_seconds", hold_timer_seconds cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @status.nil?
      return false if @location.nil?
      return false if @ipv4_prefixes.nil?
      return false if @target_asn_details.nil?
      return false if @password.nil?
      return false if @password.to_s.length > 32
      return false if @password.to_s.length < 8
      return false if @password !~ Regexp.new(/^[a-zA-Z0-9!@#$%^&*()\-|\[\]{}=;:<>,.]+$/)
      return false if @advertised_routes.nil?
      return false if @rpki_roa_origin_asn.nil?
      return false if @e_bgp_multi_hop.nil?
      return false if @peering_loopbacks_v4.nil?
      return false if @keep_alive_timer_seconds.nil?
      return false if @hold_timer_seconds.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] password Value to be assigned
    def password=(password)
      if password.nil?
        fail ArgumentError, 'password cannot be nil'
      end

      if password.to_s.length > 32
        fail ArgumentError, 'invalid value for "password", the character length must be smaller than or equal to 32.'
      end

      if password.to_s.length < 8
        fail ArgumentError, 'invalid value for "password", the character length must be great than or equal to 8.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9!@#$%^&*()\-|\[\]{}=;:<>,.]+$/)
      if password !~ pattern
        fail ArgumentError, "invalid value for \"password\", must conform to the pattern #{pattern}."
      end

      @password = password
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          status == o.status &&
          location == o.location &&
          ipv4_prefixes == o.ipv4_prefixes &&
          target_asn_details == o.target_asn_details &&
          active_asn_details == o.active_asn_details &&
          password == o.password &&
          advertised_routes == o.advertised_routes &&
          rpki_roa_origin_asn == o.rpki_roa_origin_asn &&
          e_bgp_multi_hop == o.e_bgp_multi_hop &&
          peering_loopbacks_v4 == o.peering_loopbacks_v4 &&
          keep_alive_timer_seconds == o.keep_alive_timer_seconds &&
          hold_timer_seconds == o.hold_timer_seconds &&
          created_on == o.created_on &&
          last_updated_on == o.last_updated_on
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, status, location, ipv4_prefixes, target_asn_details, active_asn_details, password, advertised_routes, rpki_roa_origin_asn, e_bgp_multi_hop, peering_loopbacks_v4, keep_alive_timer_seconds, hold_timer_seconds, created_on, last_updated_on].hash
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
