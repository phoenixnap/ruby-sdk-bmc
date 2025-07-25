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
  # Reservation details
  class Reservation
    # The reservation identifier.
    attr_accessor :id

    # The code identifying the product. This code has significant across all locations.
    attr_accessor :product_code

    attr_accessor :product_category

    attr_accessor :location

    attr_accessor :reservation_model

    attr_accessor :reservation_state

    attr_accessor :initial_invoice_model

    attr_accessor :quantity

    # The point in time (in UTC) when the reservation starts.
    attr_accessor :start_date_time

    # The point in time (in UTC) when the reservation end.
    attr_accessor :end_date_time

    # The point in time (in UTC) when the reservation was renewed last.
    attr_accessor :last_renewal_date_time

    # The point in time (in UTC) when the reservation will be renewed if auto renew is set to true.
    attr_accessor :next_renewal_date_time

    # A flag indicating whether the reservation will auto-renew (default is true).
    attr_accessor :auto_renew

    # The sku that will be applied to this reservation. It is useful to find out the price by querying the /product endpoint.
    attr_accessor :sku

    # Reservation price.
    attr_accessor :price

    attr_accessor :price_unit

    # The resource ID currently being assigned to Reservation.
    attr_accessor :assigned_resource_id

    # Next billing date for Reservation.
    attr_accessor :next_billing_date

    attr_accessor :utilization

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'product_code' => :'productCode',
        :'product_category' => :'productCategory',
        :'location' => :'location',
        :'reservation_model' => :'reservationModel',
        :'reservation_state' => :'reservationState',
        :'initial_invoice_model' => :'initialInvoiceModel',
        :'quantity' => :'quantity',
        :'start_date_time' => :'startDateTime',
        :'end_date_time' => :'endDateTime',
        :'last_renewal_date_time' => :'lastRenewalDateTime',
        :'next_renewal_date_time' => :'nextRenewalDateTime',
        :'auto_renew' => :'autoRenew',
        :'sku' => :'sku',
        :'price' => :'price',
        :'price_unit' => :'priceUnit',
        :'assigned_resource_id' => :'assignedResourceId',
        :'next_billing_date' => :'nextBillingDate',
        :'utilization' => :'utilization'
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
        :'product_code' => :'String',
        :'product_category' => :'ReservationProductCategoryEnum',
        :'location' => :'LocationEnum',
        :'reservation_model' => :'ReservationModelEnum',
        :'reservation_state' => :'ReservationStateEnum',
        :'initial_invoice_model' => :'ReservationInvoicingModelEnum',
        :'quantity' => :'Quantity',
        :'start_date_time' => :'Time',
        :'end_date_time' => :'Time',
        :'last_renewal_date_time' => :'Time',
        :'next_renewal_date_time' => :'Time',
        :'auto_renew' => :'Boolean',
        :'sku' => :'String',
        :'price' => :'Float',
        :'price_unit' => :'PriceUnitEnum',
        :'assigned_resource_id' => :'String',
        :'next_billing_date' => :'Date',
        :'utilization' => :'Utilization'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BillingApi::Reservation` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BillingApi::Reservation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'product_code')
        self.product_code = attributes[:'product_code']
      else
        self.product_code = nil
      end

      if attributes.key?(:'product_category')
        self.product_category = attributes[:'product_category']
      else
        self.product_category = nil
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      else
        self.location = nil
      end

      if attributes.key?(:'reservation_model')
        self.reservation_model = attributes[:'reservation_model']
      else
        self.reservation_model = nil
      end

      if attributes.key?(:'reservation_state')
        self.reservation_state = attributes[:'reservation_state']
      else
        self.reservation_state = nil
      end

      if attributes.key?(:'initial_invoice_model')
        self.initial_invoice_model = attributes[:'initial_invoice_model']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      else
        self.quantity = nil
      end

      if attributes.key?(:'start_date_time')
        self.start_date_time = attributes[:'start_date_time']
      else
        self.start_date_time = nil
      end

      if attributes.key?(:'end_date_time')
        self.end_date_time = attributes[:'end_date_time']
      end

      if attributes.key?(:'last_renewal_date_time')
        self.last_renewal_date_time = attributes[:'last_renewal_date_time']
      end

      if attributes.key?(:'next_renewal_date_time')
        self.next_renewal_date_time = attributes[:'next_renewal_date_time']
      end

      if attributes.key?(:'auto_renew')
        self.auto_renew = attributes[:'auto_renew']
      else
        self.auto_renew = nil
      end

      if attributes.key?(:'sku')
        self.sku = attributes[:'sku']
      else
        self.sku = nil
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      else
        self.price = nil
      end

      if attributes.key?(:'price_unit')
        self.price_unit = attributes[:'price_unit']
      else
        self.price_unit = nil
      end

      if attributes.key?(:'assigned_resource_id')
        self.assigned_resource_id = attributes[:'assigned_resource_id']
      end

      if attributes.key?(:'next_billing_date')
        self.next_billing_date = attributes[:'next_billing_date']
      end

      if attributes.key?(:'utilization')
        self.utilization = attributes[:'utilization']
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

      if @product_code.nil?
        invalid_properties.push('invalid value for "product_code", product_code cannot be nil.')
      end

      if @product_category.nil?
        invalid_properties.push('invalid value for "product_category", product_category cannot be nil.')
      end

      if @location.nil?
        invalid_properties.push('invalid value for "location", location cannot be nil.')
      end

      if @reservation_model.nil?
        invalid_properties.push('invalid value for "reservation_model", reservation_model cannot be nil.')
      end

      if @reservation_state.nil?
        invalid_properties.push('invalid value for "reservation_state", reservation_state cannot be nil.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @start_date_time.nil?
        invalid_properties.push('invalid value for "start_date_time", start_date_time cannot be nil.')
      end

      if @auto_renew.nil?
        invalid_properties.push('invalid value for "auto_renew", auto_renew cannot be nil.')
      end

      if @sku.nil?
        invalid_properties.push('invalid value for "sku", sku cannot be nil.')
      end

      if @price.nil?
        invalid_properties.push('invalid value for "price", price cannot be nil.')
      end

      if @price_unit.nil?
        invalid_properties.push('invalid value for "price_unit", price_unit cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @product_code.nil?
      return false if @product_category.nil?
      return false if @location.nil?
      return false if @reservation_model.nil?
      return false if @reservation_state.nil?
      return false if @quantity.nil?
      return false if @start_date_time.nil?
      return false if @auto_renew.nil?
      return false if @sku.nil?
      return false if @price.nil?
      return false if @price_unit.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          product_code == o.product_code &&
          product_category == o.product_category &&
          location == o.location &&
          reservation_model == o.reservation_model &&
          reservation_state == o.reservation_state &&
          initial_invoice_model == o.initial_invoice_model &&
          quantity == o.quantity &&
          start_date_time == o.start_date_time &&
          end_date_time == o.end_date_time &&
          last_renewal_date_time == o.last_renewal_date_time &&
          next_renewal_date_time == o.next_renewal_date_time &&
          auto_renew == o.auto_renew &&
          sku == o.sku &&
          price == o.price &&
          price_unit == o.price_unit &&
          assigned_resource_id == o.assigned_resource_id &&
          next_billing_date == o.next_billing_date &&
          utilization == o.utilization
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, product_code, product_category, location, reservation_model, reservation_state, initial_invoice_model, quantity, start_date_time, end_date_time, last_renewal_date_time, next_renewal_date_time, auto_renew, sku, price, price_unit, assigned_resource_id, next_billing_date, utilization].hash
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
