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

module BillingAPI
  # Rated usage record.
  class RatedUsageRecord
    # The unique identifier of the rated usage record.
    attr_accessor :id

    # The category of the product associated with this usage record.
    attr_accessor :product_category

    # The code identifying the product associated to this usage record.
    attr_accessor :product_code

    attr_accessor :location

    # Year and month of the usage record.
    attr_accessor :year_month

    # The point in time (in UTC) when usage has started.
    attr_accessor :start_date_time

    # The point in time (in UTC) until usage has been rated.
    attr_accessor :end_date_time

    # The rated usage in cents.
    attr_accessor :cost

    # The cost in cents before discount.
    attr_accessor :cost_before_discount

    # The rated usage cost description.
    attr_accessor :cost_description

    # The price model applied to this usage record.
    attr_accessor :price_model

    # The unit price.
    attr_accessor :unit_price

    # User friendly description of the unit price.
    attr_accessor :unit_price_description

    # The number of units being charged.
    attr_accessor :quantity

    # A flag indicating whether the rated usage record is still active.
    attr_accessor :active

    # The usage session ID is used to correlate rated usage records across periods of time. For example, a server used for over a month will generate multiple rated usage records. The entire usage session cost can be computed by aggregating the records having the same usage session ID. It is usual to have one rated usage record per month or invoice.
    attr_accessor :usage_session_id

    # Holds usage record id
    attr_accessor :correlation_id

    # Reservation id associated with this rated usage record.
    attr_accessor :reservation_id

    attr_accessor :discount_details

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
        :'product_category' => :'productCategory',
        :'product_code' => :'productCode',
        :'location' => :'location',
        :'year_month' => :'yearMonth',
        :'start_date_time' => :'startDateTime',
        :'end_date_time' => :'endDateTime',
        :'cost' => :'cost',
        :'cost_before_discount' => :'costBeforeDiscount',
        :'cost_description' => :'costDescription',
        :'price_model' => :'priceModel',
        :'unit_price' => :'unitPrice',
        :'unit_price_description' => :'unitPriceDescription',
        :'quantity' => :'quantity',
        :'active' => :'active',
        :'usage_session_id' => :'usageSessionId',
        :'correlation_id' => :'correlationId',
        :'reservation_id' => :'reservationId',
        :'discount_details' => :'discountDetails'
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
        :'product_category' => :'String',
        :'product_code' => :'String',
        :'location' => :'LocationEnum',
        :'year_month' => :'String',
        :'start_date_time' => :'Time',
        :'end_date_time' => :'Time',
        :'cost' => :'Integer',
        :'cost_before_discount' => :'Integer',
        :'cost_description' => :'String',
        :'price_model' => :'String',
        :'unit_price' => :'Float',
        :'unit_price_description' => :'String',
        :'quantity' => :'Float',
        :'active' => :'Boolean',
        :'usage_session_id' => :'String',
        :'correlation_id' => :'String',
        :'reservation_id' => :'String',
        :'discount_details' => :'DiscountDetails'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BillingAPI::RatedUsageRecord` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BillingAPI::RatedUsageRecord`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'product_category')
        self.product_category = attributes[:'product_category']
      else
        self.product_category = nil
      end

      if attributes.key?(:'product_code')
        self.product_code = attributes[:'product_code']
      else
        self.product_code = nil
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      else
        self.location = nil
      end

      if attributes.key?(:'year_month')
        self.year_month = attributes[:'year_month']
      end

      if attributes.key?(:'start_date_time')
        self.start_date_time = attributes[:'start_date_time']
      else
        self.start_date_time = nil
      end

      if attributes.key?(:'end_date_time')
        self.end_date_time = attributes[:'end_date_time']
      else
        self.end_date_time = nil
      end

      if attributes.key?(:'cost')
        self.cost = attributes[:'cost']
      else
        self.cost = nil
      end

      if attributes.key?(:'cost_before_discount')
        self.cost_before_discount = attributes[:'cost_before_discount']
      end

      if attributes.key?(:'cost_description')
        self.cost_description = attributes[:'cost_description']
      end

      if attributes.key?(:'price_model')
        self.price_model = attributes[:'price_model']
      else
        self.price_model = nil
      end

      if attributes.key?(:'unit_price')
        self.unit_price = attributes[:'unit_price']
      else
        self.unit_price = nil
      end

      if attributes.key?(:'unit_price_description')
        self.unit_price_description = attributes[:'unit_price_description']
      else
        self.unit_price_description = nil
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      else
        self.quantity = nil
      end

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      else
        self.active = nil
      end

      if attributes.key?(:'usage_session_id')
        self.usage_session_id = attributes[:'usage_session_id']
      else
        self.usage_session_id = nil
      end

      if attributes.key?(:'correlation_id')
        self.correlation_id = attributes[:'correlation_id']
      else
        self.correlation_id = nil
      end

      if attributes.key?(:'reservation_id')
        self.reservation_id = attributes[:'reservation_id']
      end

      if attributes.key?(:'discount_details')
        self.discount_details = attributes[:'discount_details']
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

      if @product_category.nil?
        invalid_properties.push('invalid value for "product_category", product_category cannot be nil.')
      end

      if @product_code.nil?
        invalid_properties.push('invalid value for "product_code", product_code cannot be nil.')
      end

      if @location.nil?
        invalid_properties.push('invalid value for "location", location cannot be nil.')
      end

      if @start_date_time.nil?
        invalid_properties.push('invalid value for "start_date_time", start_date_time cannot be nil.')
      end

      if @end_date_time.nil?
        invalid_properties.push('invalid value for "end_date_time", end_date_time cannot be nil.')
      end

      if @cost.nil?
        invalid_properties.push('invalid value for "cost", cost cannot be nil.')
      end

      if @price_model.nil?
        invalid_properties.push('invalid value for "price_model", price_model cannot be nil.')
      end

      if @unit_price.nil?
        invalid_properties.push('invalid value for "unit_price", unit_price cannot be nil.')
      end

      if @unit_price_description.nil?
        invalid_properties.push('invalid value for "unit_price_description", unit_price_description cannot be nil.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @active.nil?
        invalid_properties.push('invalid value for "active", active cannot be nil.')
      end

      if @usage_session_id.nil?
        invalid_properties.push('invalid value for "usage_session_id", usage_session_id cannot be nil.')
      end

      if @correlation_id.nil?
        invalid_properties.push('invalid value for "correlation_id", correlation_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @product_category.nil?
      product_category_validator = EnumAttributeValidator.new('String', ["bmc-server", "bandwidth", "operating-system", "public-ip", "storage"])
      return false unless product_category_validator.valid?(@product_category)
      return false if @product_code.nil?
      return false if @location.nil?
      return false if @start_date_time.nil?
      return false if @end_date_time.nil?
      return false if @cost.nil?
      return false if @price_model.nil?
      return false if @unit_price.nil?
      return false if @unit_price_description.nil?
      return false if @quantity.nil?
      return false if @active.nil?
      return false if @usage_session_id.nil?
      return false if @correlation_id.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_category Object to be assigned
    def product_category=(product_category)
      validator = EnumAttributeValidator.new('String', ["bmc-server", "bandwidth", "operating-system", "public-ip", "storage"])
      unless validator.valid?(product_category)
        fail ArgumentError, "invalid value for \"product_category\", must be one of #{validator.allowable_values}."
      end
      @product_category = product_category
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          product_category == o.product_category &&
          product_code == o.product_code &&
          location == o.location &&
          year_month == o.year_month &&
          start_date_time == o.start_date_time &&
          end_date_time == o.end_date_time &&
          cost == o.cost &&
          cost_before_discount == o.cost_before_discount &&
          cost_description == o.cost_description &&
          price_model == o.price_model &&
          unit_price == o.unit_price &&
          unit_price_description == o.unit_price_description &&
          quantity == o.quantity &&
          active == o.active &&
          usage_session_id == o.usage_session_id &&
          correlation_id == o.correlation_id &&
          reservation_id == o.reservation_id &&
          discount_details == o.discount_details
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, product_category, product_code, location, year_month, start_date_time, end_date_time, cost, cost_before_discount, cost_description, price_model, unit_price, unit_price_description, quantity, active, usage_session_id, correlation_id, reservation_id, discount_details].hash
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
        klass = BillingAPI.const_get(type)
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
