=begin
#Networks API

#Use the Networks API to create, list, edit, and delete private networks to best fit your business needs. Private networks allow your servers to communicate without connecting to the public internet, avoiding unnecessary egress data charges.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#multi-private-backend-network-api' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/networks/v1/)</b> 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module NetworkApi
  class PrivateNetworksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Private Networks.
    # List all Private Networks owned by account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location If present will filter the result by the given location of the Private Networks.
    # @return [Array<PrivateNetwork>]
    def private_networks_get(opts = {})
      data, _status_code, _headers = private_networks_get_with_http_info(opts)
      data
    end

    # List Private Networks.
    # List all Private Networks owned by account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location If present will filter the result by the given location of the Private Networks.
    # @return [Array<(Array<PrivateNetwork>, Integer, Hash)>] Array<PrivateNetwork> data, response status code and response headers
    def private_networks_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateNetworksApi.private_networks_get ...'
      end
      # resource path
      local_var_path = '/private-networks'

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'Array<PrivateNetwork>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PrivateNetworksApi.private_networks_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateNetworksApi#private_networks_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Private Network.
    # Delete Private Network.
    # @param private_network_id [String] The private network identifier.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def private_networks_network_id_delete(private_network_id, opts = {})
      private_networks_network_id_delete_with_http_info(private_network_id, opts)
      nil
    end

    # Delete a Private Network.
    # Delete Private Network.
    # @param private_network_id [String] The private network identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def private_networks_network_id_delete_with_http_info(private_network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateNetworksApi.private_networks_network_id_delete ...'
      end
      # verify the required parameter 'private_network_id' is set
      if @api_client.config.client_side_validation && private_network_id.nil?
        fail ArgumentError, "Missing the required parameter 'private_network_id' when calling PrivateNetworksApi.private_networks_network_id_delete"
      end
      # resource path
      local_var_path = '/private-networks/{privateNetworkId}'.sub('{' + 'privateNetworkId' + '}', CGI.escape(private_network_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PrivateNetworksApi.private_networks_network_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateNetworksApi#private_networks_network_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Private Network.
    # Retrieve Private Network Details.
    # @param private_network_id [String] The private network identifier.
    # @param [Hash] opts the optional parameters
    # @return [PrivateNetwork]
    def private_networks_network_id_get(private_network_id, opts = {})
      data, _status_code, _headers = private_networks_network_id_get_with_http_info(private_network_id, opts)
      data
    end

    # Get a Private Network.
    # Retrieve Private Network Details.
    # @param private_network_id [String] The private network identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PrivateNetwork, Integer, Hash)>] PrivateNetwork data, response status code and response headers
    def private_networks_network_id_get_with_http_info(private_network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateNetworksApi.private_networks_network_id_get ...'
      end
      # verify the required parameter 'private_network_id' is set
      if @api_client.config.client_side_validation && private_network_id.nil?
        fail ArgumentError, "Missing the required parameter 'private_network_id' when calling PrivateNetworksApi.private_networks_network_id_get"
      end
      # resource path
      local_var_path = '/private-networks/{privateNetworkId}'.sub('{' + 'privateNetworkId' + '}', CGI.escape(private_network_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PrivateNetwork'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PrivateNetworksApi.private_networks_network_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateNetworksApi#private_networks_network_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Private Network.
    # Update Private Network Details.
    # @param private_network_id [String] The private network identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [PrivateNetworkModify] :private_network_modify 
    # @return [PrivateNetwork]
    def private_networks_network_id_put(private_network_id, opts = {})
      data, _status_code, _headers = private_networks_network_id_put_with_http_info(private_network_id, opts)
      data
    end

    # Update a Private Network.
    # Update Private Network Details.
    # @param private_network_id [String] The private network identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [PrivateNetworkModify] :private_network_modify 
    # @return [Array<(PrivateNetwork, Integer, Hash)>] PrivateNetwork data, response status code and response headers
    def private_networks_network_id_put_with_http_info(private_network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateNetworksApi.private_networks_network_id_put ...'
      end
      # verify the required parameter 'private_network_id' is set
      if @api_client.config.client_side_validation && private_network_id.nil?
        fail ArgumentError, "Missing the required parameter 'private_network_id' when calling PrivateNetworksApi.private_networks_network_id_put"
      end
      # resource path
      local_var_path = '/private-networks/{privateNetworkId}'.sub('{' + 'privateNetworkId' + '}', CGI.escape(private_network_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'private_network_modify'])

      # return_type
      return_type = opts[:debug_return_type] || 'PrivateNetwork'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PrivateNetworksApi.private_networks_network_id_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateNetworksApi#private_networks_network_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Private Network.
    # Create a Private Network.
    # @param [Hash] opts the optional parameters
    # @option opts [PrivateNetworkCreate] :private_network_create 
    # @return [PrivateNetwork]
    def private_networks_post(opts = {})
      data, _status_code, _headers = private_networks_post_with_http_info(opts)
      data
    end

    # Create a Private Network.
    # Create a Private Network.
    # @param [Hash] opts the optional parameters
    # @option opts [PrivateNetworkCreate] :private_network_create 
    # @return [Array<(PrivateNetwork, Integer, Hash)>] PrivateNetwork data, response status code and response headers
    def private_networks_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateNetworksApi.private_networks_post ...'
      end
      # resource path
      local_var_path = '/private-networks'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'private_network_create'])

      # return_type
      return_type = opts[:debug_return_type] || 'PrivateNetwork'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PrivateNetworksApi.private_networks_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateNetworksApi#private_networks_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end