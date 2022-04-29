=begin
#Networks API

#Create, list, edit and delete public/private networks with the Network API. Use public networks to place multiple  servers on the same network or VLAN. Assign new servers with IP addresses from the same CIDR range. Use private  networks to avoid unnecessary egress data charges. Model your networks according to your business needs.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#multi-private-backend-network-api' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/networks/v1/)</b> 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module NetworkApi
  class PublicNetworksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Public Networks.
    # List all Public Networks owned by account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location If present will filter the result by the given location of the Public Networks.
    # @return [Array<PublicNetwork>]
    def public_networks_get(opts = {})
      data, _status_code, _headers = public_networks_get_with_http_info(opts)
      data
    end

    # List Public Networks.
    # List all Public Networks owned by account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location If present will filter the result by the given location of the Public Networks.
    # @return [Array<(Array<PublicNetwork>, Integer, Hash)>] Array<PublicNetwork> data, response status code and response headers
    def public_networks_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicNetworksApi.public_networks_get ...'
      end
      # resource path
      local_var_path = '/public-networks'

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
      return_type = opts[:debug_return_type] || 'Array<PublicNetwork>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PublicNetworksApi.public_networks_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicNetworksApi#public_networks_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Public Network.
    # Delete Public Network. The request is accepted only if no resources are members of this network. The IP Block(s) will be freed and can be re-used in the future.
    # @param public_network_id [String] The Public Network identifier.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def public_networks_network_id_delete(public_network_id, opts = {})
      public_networks_network_id_delete_with_http_info(public_network_id, opts)
      nil
    end

    # Delete a Public Network.
    # Delete Public Network. The request is accepted only if no resources are members of this network. The IP Block(s) will be freed and can be re-used in the future.
    # @param public_network_id [String] The Public Network identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def public_networks_network_id_delete_with_http_info(public_network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicNetworksApi.public_networks_network_id_delete ...'
      end
      # verify the required parameter 'public_network_id' is set
      if @api_client.config.client_side_validation && public_network_id.nil?
        fail ArgumentError, "Missing the required parameter 'public_network_id' when calling PublicNetworksApi.public_networks_network_id_delete"
      end
      # resource path
      local_var_path = '/public-networks/{publicNetworkId}'.sub('{' + 'publicNetworkId' + '}', CGI.escape(public_network_id.to_s))

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
        :operation => :"PublicNetworksApi.public_networks_network_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicNetworksApi#public_networks_network_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Public Network.
    # Retrieve Public Network Details.
    # @param public_network_id [String] The Public Network identifier.
    # @param [Hash] opts the optional parameters
    # @return [PublicNetwork]
    def public_networks_network_id_get(public_network_id, opts = {})
      data, _status_code, _headers = public_networks_network_id_get_with_http_info(public_network_id, opts)
      data
    end

    # Get a Public Network.
    # Retrieve Public Network Details.
    # @param public_network_id [String] The Public Network identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PublicNetwork, Integer, Hash)>] PublicNetwork data, response status code and response headers
    def public_networks_network_id_get_with_http_info(public_network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicNetworksApi.public_networks_network_id_get ...'
      end
      # verify the required parameter 'public_network_id' is set
      if @api_client.config.client_side_validation && public_network_id.nil?
        fail ArgumentError, "Missing the required parameter 'public_network_id' when calling PublicNetworksApi.public_networks_network_id_get"
      end
      # resource path
      local_var_path = '/public-networks/{publicNetworkId}'.sub('{' + 'publicNetworkId' + '}', CGI.escape(public_network_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PublicNetwork'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PublicNetworksApi.public_networks_network_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicNetworksApi#public_networks_network_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Removes the IP Block from the Public Network.
    # Removes the IP Block from the Public Network. The result of this is that any traffic addressed to any IP within the block will not be routed to this network anymore. Please ensure that no resource members within this network have any IPs assigned from the IP Block being removed.
    # @param public_network_id [String] The Public Network identifier.
    # @param ip_block_id [String] The IP Block identifier.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def public_networks_network_id_ip_blocks_ip_block_id_delete(public_network_id, ip_block_id, opts = {})
      data, _status_code, _headers = public_networks_network_id_ip_blocks_ip_block_id_delete_with_http_info(public_network_id, ip_block_id, opts)
      data
    end

    # Removes the IP Block from the Public Network.
    # Removes the IP Block from the Public Network. The result of this is that any traffic addressed to any IP within the block will not be routed to this network anymore. Please ensure that no resource members within this network have any IPs assigned from the IP Block being removed.
    # @param public_network_id [String] The Public Network identifier.
    # @param ip_block_id [String] The IP Block identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def public_networks_network_id_ip_blocks_ip_block_id_delete_with_http_info(public_network_id, ip_block_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicNetworksApi.public_networks_network_id_ip_blocks_ip_block_id_delete ...'
      end
      # verify the required parameter 'public_network_id' is set
      if @api_client.config.client_side_validation && public_network_id.nil?
        fail ArgumentError, "Missing the required parameter 'public_network_id' when calling PublicNetworksApi.public_networks_network_id_ip_blocks_ip_block_id_delete"
      end
      # verify the required parameter 'ip_block_id' is set
      if @api_client.config.client_side_validation && ip_block_id.nil?
        fail ArgumentError, "Missing the required parameter 'ip_block_id' when calling PublicNetworksApi.public_networks_network_id_ip_blocks_ip_block_id_delete"
      end
      # resource path
      local_var_path = '/public-networks/{publicNetworkId}/ip-blocks/{ipBlockId}'.sub('{' + 'publicNetworkId' + '}', CGI.escape(public_network_id.to_s)).sub('{' + 'ipBlockId' + '}', CGI.escape(ip_block_id.to_s))

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
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PublicNetworksApi.public_networks_network_id_ip_blocks_ip_block_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicNetworksApi#public_networks_network_id_ip_blocks_ip_block_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds an IP block to this public network.
    # Adds an IP block to this public network.
    # @param public_network_id [String] The Public Network identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [PublicNetworkIpBlock] :public_network_ip_block 
    # @return [PublicNetworkIpBlock]
    def public_networks_network_id_ip_blocks_post(public_network_id, opts = {})
      data, _status_code, _headers = public_networks_network_id_ip_blocks_post_with_http_info(public_network_id, opts)
      data
    end

    # Adds an IP block to this public network.
    # Adds an IP block to this public network.
    # @param public_network_id [String] The Public Network identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [PublicNetworkIpBlock] :public_network_ip_block 
    # @return [Array<(PublicNetworkIpBlock, Integer, Hash)>] PublicNetworkIpBlock data, response status code and response headers
    def public_networks_network_id_ip_blocks_post_with_http_info(public_network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicNetworksApi.public_networks_network_id_ip_blocks_post ...'
      end
      # verify the required parameter 'public_network_id' is set
      if @api_client.config.client_side_validation && public_network_id.nil?
        fail ArgumentError, "Missing the required parameter 'public_network_id' when calling PublicNetworksApi.public_networks_network_id_ip_blocks_post"
      end
      # resource path
      local_var_path = '/public-networks/{publicNetworkId}/ip-blocks'.sub('{' + 'publicNetworkId' + '}', CGI.escape(public_network_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'public_network_ip_block'])

      # return_type
      return_type = opts[:debug_return_type] || 'PublicNetworkIpBlock'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PublicNetworksApi.public_networks_network_id_ip_blocks_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicNetworksApi#public_networks_network_id_ip_blocks_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Public Network's Details.
    # Update Public Network's Details.
    # @param public_network_id [String] The Public Network identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [PublicNetworkModify] :public_network_modify 
    # @return [PublicNetwork]
    def public_networks_network_id_patch(public_network_id, opts = {})
      data, _status_code, _headers = public_networks_network_id_patch_with_http_info(public_network_id, opts)
      data
    end

    # Update Public Network&#39;s Details.
    # Update Public Network&#39;s Details.
    # @param public_network_id [String] The Public Network identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [PublicNetworkModify] :public_network_modify 
    # @return [Array<(PublicNetwork, Integer, Hash)>] PublicNetwork data, response status code and response headers
    def public_networks_network_id_patch_with_http_info(public_network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicNetworksApi.public_networks_network_id_patch ...'
      end
      # verify the required parameter 'public_network_id' is set
      if @api_client.config.client_side_validation && public_network_id.nil?
        fail ArgumentError, "Missing the required parameter 'public_network_id' when calling PublicNetworksApi.public_networks_network_id_patch"
      end
      # resource path
      local_var_path = '/public-networks/{publicNetworkId}'.sub('{' + 'publicNetworkId' + '}', CGI.escape(public_network_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'public_network_modify'])

      # return_type
      return_type = opts[:debug_return_type] || 'PublicNetwork'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PublicNetworksApi.public_networks_network_id_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicNetworksApi#public_networks_network_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a public network.
    # Create a public network.
    # @param [Hash] opts the optional parameters
    # @option opts [PublicNetworkCreate] :public_network_create 
    # @return [PublicNetwork]
    def public_networks_post(opts = {})
      data, _status_code, _headers = public_networks_post_with_http_info(opts)
      data
    end

    # Create a public network.
    # Create a public network.
    # @param [Hash] opts the optional parameters
    # @option opts [PublicNetworkCreate] :public_network_create 
    # @return [Array<(PublicNetwork, Integer, Hash)>] PublicNetwork data, response status code and response headers
    def public_networks_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicNetworksApi.public_networks_post ...'
      end
      # resource path
      local_var_path = '/public-networks'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'public_network_create'])

      # return_type
      return_type = opts[:debug_return_type] || 'PublicNetwork'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"PublicNetworksApi.public_networks_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicNetworksApi#public_networks_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
