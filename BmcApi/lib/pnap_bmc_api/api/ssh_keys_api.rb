=begin
#Bare Metal Cloud API

#Create, power off, power on, reset, reboot, or shut down your server with the Bare Metal Cloud API.  Deprovision servers, get or edit SSH key details, assign public IPs, assign servers to networks and a lot more.  Manage your infrastructure more efficiently using just a few simple API calls.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/how-to-deploy-bare-metal-cloud-server' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/bmc/v1/)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module BmcApi
  class SSHKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List SSH Keys.
    # List all SSH Keys.
    # @param [Hash] opts the optional parameters
    # @return [Array<SshKey>]
    def ssh_keys_get(opts = {})
      data, _status_code, _headers = ssh_keys_get_with_http_info(opts)
      data
    end

    # List SSH Keys.
    # List all SSH Keys.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SshKey>, Integer, Hash)>] Array<SshKey> data, response status code and response headers
    def ssh_keys_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SSHKeysApi.ssh_keys_get ...'
      end
      # resource path
      local_var_path = '/ssh-keys'

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
      return_type = opts[:debug_return_type] || 'Array<SshKey>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"SSHKeysApi.ssh_keys_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SSHKeysApi#ssh_keys_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create SSH Key.
    # Create an SSH Key. SSH Keys created can be used for server creation and reset functionality.
    # @param [Hash] opts the optional parameters
    # @option opts [SshKeyCreate] :ssh_key_create 
    # @return [SshKey]
    def ssh_keys_post(opts = {})
      data, _status_code, _headers = ssh_keys_post_with_http_info(opts)
      data
    end

    # Create SSH Key.
    # Create an SSH Key. SSH Keys created can be used for server creation and reset functionality.
    # @param [Hash] opts the optional parameters
    # @option opts [SshKeyCreate] :ssh_key_create 
    # @return [Array<(SshKey, Integer, Hash)>] SshKey data, response status code and response headers
    def ssh_keys_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SSHKeysApi.ssh_keys_post ...'
      end
      # resource path
      local_var_path = '/ssh-keys'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'ssh_key_create'])

      # return_type
      return_type = opts[:debug_return_type] || 'SshKey'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"SSHKeysApi.ssh_keys_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SSHKeysApi#ssh_keys_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete SSH Key.
    # Delete an SSH Key.
    # @param ssh_key_id [String] The SSH Key&#39;s ID.
    # @param [Hash] opts the optional parameters
    # @return [DeleteSshKeyResult]
    def ssh_keys_ssh_key_id_delete(ssh_key_id, opts = {})
      data, _status_code, _headers = ssh_keys_ssh_key_id_delete_with_http_info(ssh_key_id, opts)
      data
    end

    # Delete SSH Key.
    # Delete an SSH Key.
    # @param ssh_key_id [String] The SSH Key&#39;s ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteSshKeyResult, Integer, Hash)>] DeleteSshKeyResult data, response status code and response headers
    def ssh_keys_ssh_key_id_delete_with_http_info(ssh_key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SSHKeysApi.ssh_keys_ssh_key_id_delete ...'
      end
      # verify the required parameter 'ssh_key_id' is set
      if @api_client.config.client_side_validation && ssh_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'ssh_key_id' when calling SSHKeysApi.ssh_keys_ssh_key_id_delete"
      end
      # resource path
      local_var_path = '/ssh-keys/{sshKeyId}'.sub('{' + 'sshKeyId' + '}', CGI.escape(ssh_key_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DeleteSshKeyResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"SSHKeysApi.ssh_keys_ssh_key_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SSHKeysApi#ssh_keys_ssh_key_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get SSH Key.
    # Get SSH Key details.
    # @param ssh_key_id [String] The SSH Key&#39;s ID.
    # @param [Hash] opts the optional parameters
    # @return [SshKey]
    def ssh_keys_ssh_key_id_get(ssh_key_id, opts = {})
      data, _status_code, _headers = ssh_keys_ssh_key_id_get_with_http_info(ssh_key_id, opts)
      data
    end

    # Get SSH Key.
    # Get SSH Key details.
    # @param ssh_key_id [String] The SSH Key&#39;s ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SshKey, Integer, Hash)>] SshKey data, response status code and response headers
    def ssh_keys_ssh_key_id_get_with_http_info(ssh_key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SSHKeysApi.ssh_keys_ssh_key_id_get ...'
      end
      # verify the required parameter 'ssh_key_id' is set
      if @api_client.config.client_side_validation && ssh_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'ssh_key_id' when calling SSHKeysApi.ssh_keys_ssh_key_id_get"
      end
      # resource path
      local_var_path = '/ssh-keys/{sshKeyId}'.sub('{' + 'sshKeyId' + '}', CGI.escape(ssh_key_id.to_s))

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
      return_type = opts[:debug_return_type] || 'SshKey'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"SSHKeysApi.ssh_keys_ssh_key_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SSHKeysApi#ssh_keys_ssh_key_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit SSH Key.
    # Edit SSH Key details.
    # @param ssh_key_id [String] The SSH Key&#39;s ID.
    # @param [Hash] opts the optional parameters
    # @option opts [SshKeyUpdate] :ssh_key_update 
    # @return [SshKey]
    def ssh_keys_ssh_key_id_put(ssh_key_id, opts = {})
      data, _status_code, _headers = ssh_keys_ssh_key_id_put_with_http_info(ssh_key_id, opts)
      data
    end

    # Edit SSH Key.
    # Edit SSH Key details.
    # @param ssh_key_id [String] The SSH Key&#39;s ID.
    # @param [Hash] opts the optional parameters
    # @option opts [SshKeyUpdate] :ssh_key_update 
    # @return [Array<(SshKey, Integer, Hash)>] SshKey data, response status code and response headers
    def ssh_keys_ssh_key_id_put_with_http_info(ssh_key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SSHKeysApi.ssh_keys_ssh_key_id_put ...'
      end
      # verify the required parameter 'ssh_key_id' is set
      if @api_client.config.client_side_validation && ssh_key_id.nil?
        fail ArgumentError, "Missing the required parameter 'ssh_key_id' when calling SSHKeysApi.ssh_keys_ssh_key_id_put"
      end
      # resource path
      local_var_path = '/ssh-keys/{sshKeyId}'.sub('{' + 'sshKeyId' + '}', CGI.escape(ssh_key_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'ssh_key_update'])

      # return_type
      return_type = opts[:debug_return_type] || 'SshKey'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"SSHKeysApi.ssh_keys_ssh_key_id_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SSHKeysApi#ssh_keys_ssh_key_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
