=begin
#Network Storage API

#Create, list, edit, and delete storage networks with the Network Storage API. Use storage networks to expand storage capacity on a private network. <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/bare-metal-cloud-storage' target='_blank'>here</a> </span> <br> <b>All URLs are relative to (https://api.phoenixnap.com/network-storage/v1/)</b> 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module NetworkStorageApi
  class StorageNetworksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List all storage networks.
    # List all storage networks.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location If present will filter the result by the given location.
    # @return [Array<StorageNetwork>]
    def storage_networks_get(opts = {})
      data, _status_code, _headers = storage_networks_get_with_http_info(opts)
      data
    end

    # List all storage networks.
    # List all storage networks.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :location If present will filter the result by the given location.
    # @return [Array<(Array<StorageNetwork>, Integer, Hash)>] Array<StorageNetwork> data, response status code and response headers
    def storage_networks_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageNetworksApi.storage_networks_get ...'
      end
      # resource path
      local_var_path = '/storage-networks'

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
      return_type = opts[:debug_return_type] || 'Array<StorageNetwork>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"StorageNetworksApi.storage_networks_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StorageNetworksApi#storage_networks_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a storage network and its volume.
    # Delete a storage network and its volume. A storage network can only be removed if it's not in 'BUSY' state. Billing stops on storage network deletion.
    # @param storage_network_id [String] ID of storage network.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def storage_networks_id_delete(storage_network_id, opts = {})
      storage_networks_id_delete_with_http_info(storage_network_id, opts)
      nil
    end

    # Delete a storage network and its volume.
    # Delete a storage network and its volume. A storage network can only be removed if it&#39;s not in &#39;BUSY&#39; state. Billing stops on storage network deletion.
    # @param storage_network_id [String] ID of storage network.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def storage_networks_id_delete_with_http_info(storage_network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageNetworksApi.storage_networks_id_delete ...'
      end
      # verify the required parameter 'storage_network_id' is set
      if @api_client.config.client_side_validation && storage_network_id.nil?
        fail ArgumentError, "Missing the required parameter 'storage_network_id' when calling StorageNetworksApi.storage_networks_id_delete"
      end
      # resource path
      local_var_path = '/storage-networks/{storageNetworkId}'.sub('{' + 'storageNetworkId' + '}', CGI.escape(storage_network_id.to_s))

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
        :operation => :"StorageNetworksApi.storage_networks_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StorageNetworksApi#storage_networks_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get storage network details.
    # Get storage network details.
    # @param storage_network_id [String] ID of storage network.
    # @param [Hash] opts the optional parameters
    # @return [StorageNetwork]
    def storage_networks_id_get(storage_network_id, opts = {})
      data, _status_code, _headers = storage_networks_id_get_with_http_info(storage_network_id, opts)
      data
    end

    # Get storage network details.
    # Get storage network details.
    # @param storage_network_id [String] ID of storage network.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StorageNetwork, Integer, Hash)>] StorageNetwork data, response status code and response headers
    def storage_networks_id_get_with_http_info(storage_network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageNetworksApi.storage_networks_id_get ...'
      end
      # verify the required parameter 'storage_network_id' is set
      if @api_client.config.client_side_validation && storage_network_id.nil?
        fail ArgumentError, "Missing the required parameter 'storage_network_id' when calling StorageNetworksApi.storage_networks_id_get"
      end
      # resource path
      local_var_path = '/storage-networks/{storageNetworkId}'.sub('{' + 'storageNetworkId' + '}', CGI.escape(storage_network_id.to_s))

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
      return_type = opts[:debug_return_type] || 'StorageNetwork'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"StorageNetworksApi.storage_networks_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StorageNetworksApi#storage_networks_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update storage network details.
    # Update storage network details.
    # @param storage_network_id [String] ID of storage network.
    # @param [Hash] opts the optional parameters
    # @option opts [StorageNetworkUpdate] :storage_network_update Storage network to be updated.
    # @return [StorageNetwork]
    def storage_networks_id_patch(storage_network_id, opts = {})
      data, _status_code, _headers = storage_networks_id_patch_with_http_info(storage_network_id, opts)
      data
    end

    # Update storage network details.
    # Update storage network details.
    # @param storage_network_id [String] ID of storage network.
    # @param [Hash] opts the optional parameters
    # @option opts [StorageNetworkUpdate] :storage_network_update Storage network to be updated.
    # @return [Array<(StorageNetwork, Integer, Hash)>] StorageNetwork data, response status code and response headers
    def storage_networks_id_patch_with_http_info(storage_network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageNetworksApi.storage_networks_id_patch ...'
      end
      # verify the required parameter 'storage_network_id' is set
      if @api_client.config.client_side_validation && storage_network_id.nil?
        fail ArgumentError, "Missing the required parameter 'storage_network_id' when calling StorageNetworksApi.storage_networks_id_patch"
      end
      # resource path
      local_var_path = '/storage-networks/{storageNetworkId}'.sub('{' + 'storageNetworkId' + '}', CGI.escape(storage_network_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'storage_network_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'StorageNetwork'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"StorageNetworksApi.storage_networks_id_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StorageNetworksApi#storage_networks_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a storage network and volume.
    # Create a storage network and volume.
    # @param [Hash] opts the optional parameters
    # @option opts [StorageNetworkCreate] :storage_network_create 
    # @return [StorageNetwork]
    def storage_networks_post(opts = {})
      data, _status_code, _headers = storage_networks_post_with_http_info(opts)
      data
    end

    # Create a storage network and volume.
    # Create a storage network and volume.
    # @param [Hash] opts the optional parameters
    # @option opts [StorageNetworkCreate] :storage_network_create 
    # @return [Array<(StorageNetwork, Integer, Hash)>] StorageNetwork data, response status code and response headers
    def storage_networks_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageNetworksApi.storage_networks_post ...'
      end
      # resource path
      local_var_path = '/storage-networks'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'storage_network_create'])

      # return_type
      return_type = opts[:debug_return_type] || 'StorageNetwork'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"StorageNetworksApi.storage_networks_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StorageNetworksApi#storage_networks_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Display one or more volumes belonging to a storage network.
    # Display one or more volumes belonging to a storage network.
    # @param storage_network_id [String] ID of storage network.
    # @param [Hash] opts the optional parameters
    # @return [Array<Volume>]
    def storage_networks_storage_network_id_volumes_get(storage_network_id, opts = {})
      data, _status_code, _headers = storage_networks_storage_network_id_volumes_get_with_http_info(storage_network_id, opts)
      data
    end

    # Display one or more volumes belonging to a storage network.
    # Display one or more volumes belonging to a storage network.
    # @param storage_network_id [String] ID of storage network.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Volume>, Integer, Hash)>] Array<Volume> data, response status code and response headers
    def storage_networks_storage_network_id_volumes_get_with_http_info(storage_network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageNetworksApi.storage_networks_storage_network_id_volumes_get ...'
      end
      # verify the required parameter 'storage_network_id' is set
      if @api_client.config.client_side_validation && storage_network_id.nil?
        fail ArgumentError, "Missing the required parameter 'storage_network_id' when calling StorageNetworksApi.storage_networks_storage_network_id_volumes_get"
      end
      # resource path
      local_var_path = '/storage-networks/{storageNetworkId}/volumes'.sub('{' + 'storageNetworkId' + '}', CGI.escape(storage_network_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<Volume>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"StorageNetworksApi.storage_networks_storage_network_id_volumes_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StorageNetworksApi#storage_networks_storage_network_id_volumes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Storage Network's Volume
    # Delete a Storage Network's Volume
    # @param storage_network_id [String] ID of storage network.
    # @param volume_id [String] ID of volume.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def storage_networks_storage_network_id_volumes_volume_id_delete(storage_network_id, volume_id, opts = {})
      storage_networks_storage_network_id_volumes_volume_id_delete_with_http_info(storage_network_id, volume_id, opts)
      nil
    end

    # Delete a Storage Network&#39;s Volume
    # Delete a Storage Network&#39;s Volume
    # @param storage_network_id [String] ID of storage network.
    # @param volume_id [String] ID of volume.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def storage_networks_storage_network_id_volumes_volume_id_delete_with_http_info(storage_network_id, volume_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageNetworksApi.storage_networks_storage_network_id_volumes_volume_id_delete ...'
      end
      # verify the required parameter 'storage_network_id' is set
      if @api_client.config.client_side_validation && storage_network_id.nil?
        fail ArgumentError, "Missing the required parameter 'storage_network_id' when calling StorageNetworksApi.storage_networks_storage_network_id_volumes_volume_id_delete"
      end
      # verify the required parameter 'volume_id' is set
      if @api_client.config.client_side_validation && volume_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_id' when calling StorageNetworksApi.storage_networks_storage_network_id_volumes_volume_id_delete"
      end
      # resource path
      local_var_path = '/storage-networks/{storageNetworkId}/volumes/{volumeId}'.sub('{' + 'storageNetworkId' + '}', CGI.escape(storage_network_id.to_s)).sub('{' + 'volumeId' + '}', CGI.escape(volume_id.to_s))

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
        :operation => :"StorageNetworksApi.storage_networks_storage_network_id_volumes_volume_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StorageNetworksApi#storage_networks_storage_network_id_volumes_volume_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a storage network's volume details.
    # Get a storage network's volume details.
    # @param storage_network_id [String] ID of storage network.
    # @param volume_id [String] ID of volume.
    # @param [Hash] opts the optional parameters
    # @return [Volume]
    def storage_networks_storage_network_id_volumes_volume_id_get(storage_network_id, volume_id, opts = {})
      data, _status_code, _headers = storage_networks_storage_network_id_volumes_volume_id_get_with_http_info(storage_network_id, volume_id, opts)
      data
    end

    # Get a storage network&#39;s volume details.
    # Get a storage network&#39;s volume details.
    # @param storage_network_id [String] ID of storage network.
    # @param volume_id [String] ID of volume.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Volume, Integer, Hash)>] Volume data, response status code and response headers
    def storage_networks_storage_network_id_volumes_volume_id_get_with_http_info(storage_network_id, volume_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageNetworksApi.storage_networks_storage_network_id_volumes_volume_id_get ...'
      end
      # verify the required parameter 'storage_network_id' is set
      if @api_client.config.client_side_validation && storage_network_id.nil?
        fail ArgumentError, "Missing the required parameter 'storage_network_id' when calling StorageNetworksApi.storage_networks_storage_network_id_volumes_volume_id_get"
      end
      # verify the required parameter 'volume_id' is set
      if @api_client.config.client_side_validation && volume_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_id' when calling StorageNetworksApi.storage_networks_storage_network_id_volumes_volume_id_get"
      end
      # resource path
      local_var_path = '/storage-networks/{storageNetworkId}/volumes/{volumeId}'.sub('{' + 'storageNetworkId' + '}', CGI.escape(storage_network_id.to_s)).sub('{' + 'volumeId' + '}', CGI.escape(volume_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Volume'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"StorageNetworksApi.storage_networks_storage_network_id_volumes_volume_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StorageNetworksApi#storage_networks_storage_network_id_volumes_volume_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a storage network's volume details.
    # Update a storage network's volume details.
    # @param storage_network_id [String] ID of storage network.
    # @param volume_id [String] ID of volume.
    # @param [Hash] opts the optional parameters
    # @option opts [VolumeUpdate] :volume_update Storage network volume to be updated.
    # @return [Volume]
    def storage_networks_storage_network_id_volumes_volume_id_patch(storage_network_id, volume_id, opts = {})
      data, _status_code, _headers = storage_networks_storage_network_id_volumes_volume_id_patch_with_http_info(storage_network_id, volume_id, opts)
      data
    end

    # Update a storage network&#39;s volume details.
    # Update a storage network&#39;s volume details.
    # @param storage_network_id [String] ID of storage network.
    # @param volume_id [String] ID of volume.
    # @param [Hash] opts the optional parameters
    # @option opts [VolumeUpdate] :volume_update Storage network volume to be updated.
    # @return [Array<(Volume, Integer, Hash)>] Volume data, response status code and response headers
    def storage_networks_storage_network_id_volumes_volume_id_patch_with_http_info(storage_network_id, volume_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StorageNetworksApi.storage_networks_storage_network_id_volumes_volume_id_patch ...'
      end
      # verify the required parameter 'storage_network_id' is set
      if @api_client.config.client_side_validation && storage_network_id.nil?
        fail ArgumentError, "Missing the required parameter 'storage_network_id' when calling StorageNetworksApi.storage_networks_storage_network_id_volumes_volume_id_patch"
      end
      # verify the required parameter 'volume_id' is set
      if @api_client.config.client_side_validation && volume_id.nil?
        fail ArgumentError, "Missing the required parameter 'volume_id' when calling StorageNetworksApi.storage_networks_storage_network_id_volumes_volume_id_patch"
      end
      # resource path
      local_var_path = '/storage-networks/{storageNetworkId}/volumes/{volumeId}'.sub('{' + 'storageNetworkId' + '}', CGI.escape(storage_network_id.to_s)).sub('{' + 'volumeId' + '}', CGI.escape(volume_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'volume_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'Volume'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"StorageNetworksApi.storage_networks_storage_network_id_volumes_volume_id_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StorageNetworksApi#storage_networks_storage_network_id_volumes_volume_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
