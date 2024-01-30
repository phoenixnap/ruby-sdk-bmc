=begin
#Billing API

#Automate your infrastructure billing with the Bare Metal Cloud Billing API. Reserve your server instances to ensure guaranteed resource availability for 12, 24, and 36 months. Retrieve your server’s rated usage for a given period and enable or disable auto-renewals.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/phoenixnap-bare-metal-cloud-billing-models' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/billing/v1/)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'cgi'

module BillingApi
  class ProductsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List all Product availabilities.
    # Retrieves the list of product availability details.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :product_category Product category. Currently only SERVER category is supported.
    # @option opts [Array<String>] :product_code 
    # @option opts [Boolean] :show_only_min_quantity_available Show only locations where product with requested quantity is available or all locations where product is offered. (default to true)
    # @option opts [Array<LocationEnum>] :location 
    # @option opts [Array<String>] :solution 
    # @option opts [Float] :min_quantity Minimal quantity of product needed. Minimum, maximum and default values might differ for different products. For servers, they are 1, 10 and 1 respectively.
    # @return [Array<ProductAvailability>]
    def product_availability_get(opts = {})
      data, _status_code, _headers = product_availability_get_with_http_info(opts)
      data
    end

    # List all Product availabilities.
    # Retrieves the list of product availability details.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :product_category Product category. Currently only SERVER category is supported.
    # @option opts [Array<String>] :product_code 
    # @option opts [Boolean] :show_only_min_quantity_available Show only locations where product with requested quantity is available or all locations where product is offered. (default to true)
    # @option opts [Array<LocationEnum>] :location 
    # @option opts [Array<String>] :solution 
    # @option opts [Float] :min_quantity Minimal quantity of product needed. Minimum, maximum and default values might differ for different products. For servers, they are 1, 10 and 1 respectively.
    # @return [Array<(Array<ProductAvailability>, Integer, Hash)>] Array<ProductAvailability> data, response status code and response headers
    def product_availability_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductsApi.product_availability_get ...'
      end
      allowable_values = ["SERVER"]
      if @api_client.config.client_side_validation && opts[:'product_category'] && !opts[:'product_category'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"product_category\", must include one of #{allowable_values}"
      end
      allowable_values = ["SERVER_RANCHER"]
      if @api_client.config.client_side_validation && opts[:'solution'] && !opts[:'solution'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"solution\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/product-availability'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'productCategory'] = @api_client.build_collection_param(opts[:'product_category'], :multi) if !opts[:'product_category'].nil?
      query_params[:'productCode'] = @api_client.build_collection_param(opts[:'product_code'], :multi) if !opts[:'product_code'].nil?
      query_params[:'showOnlyMinQuantityAvailable'] = opts[:'show_only_min_quantity_available'] if !opts[:'show_only_min_quantity_available'].nil?
      query_params[:'location'] = @api_client.build_collection_param(opts[:'location'], :multi) if !opts[:'location'].nil?
      query_params[:'solution'] = @api_client.build_collection_param(opts[:'solution'], :multi) if !opts[:'solution'].nil?
      query_params[:'minQuantity'] = opts[:'min_quantity'] if !opts[:'min_quantity'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ProductAvailability>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"ProductsApi.product_availability_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#product_availability_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all Products.
    # Retrieves all Products.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :product_code 
    # @option opts [String] :product_category 
    # @option opts [String] :sku_code 
    # @option opts [String] :location 
    # @return [Array<ProductsGet200ResponseInner>]
    def products_get(opts = {})
      data, _status_code, _headers = products_get_with_http_info(opts)
      data
    end

    # List all Products.
    # Retrieves all Products.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :product_code 
    # @option opts [String] :product_category 
    # @option opts [String] :sku_code 
    # @option opts [String] :location 
    # @return [Array<(Array<ProductsGet200ResponseInner>, Integer, Hash)>] Array<ProductsGet200ResponseInner> data, response status code and response headers
    def products_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductsApi.products_get ...'
      end
      # resource path
      local_var_path = '/products'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'productCode'] = opts[:'product_code'] if !opts[:'product_code'].nil?
      query_params[:'productCategory'] = opts[:'product_category'] if !opts[:'product_category'].nil?
      query_params[:'skuCode'] = opts[:'sku_code'] if !opts[:'sku_code'].nil?
      query_params[:'location'] = opts[:'location'] if !opts[:'location'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ProductsGet200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"ProductsApi.products_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      puts "data, #{data}"
      puts "status_code, #{status_code}"
      puts "headers, #{headers}"
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductsApi#products_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
