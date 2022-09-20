=begin
#Bare Metal Cloud API

#Create, power off, power on, reset, reboot, or shut down your server with the Bare Metal Cloud API.  Deprovision servers, get or edit SSH key details, assign public IPs, assign servers to networks and a lot more.  Manage your infrastructure more efficiently using just a few simple API calls.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/how-to-deploy-bare-metal-cloud-server' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/bmc/v1/)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'cgi'

module BmcApi
  class QuotasApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List quotas
    # Get account quota details.
    # @param [Hash] opts the optional parameters
    # @return [Array<Quota>]
    def quotas_get(opts = {})
      data, _status_code, _headers = quotas_get_with_http_info(opts)
      data
    end

    # List quotas
    # Get account quota details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Quota>, Integer, Hash)>] Array<Quota> data, response status code and response headers
    def quotas_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: QuotasApi.quotas_get ...'
      end
      # resource path
      local_var_path = '/quotas'

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
      return_type = opts[:debug_return_type] || 'Array<Quota>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"QuotasApi.quotas_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: QuotasApi#quotas_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Request quota limit change.
    # Sends a request to edit the limit of a quota.
    # @param quota_id [String] The ID of the Quota.
    # @param [Hash] opts the optional parameters
    # @option opts [QuotaEditLimitRequest] :quota_edit_limit_request 
    # @return [nil]
    def quotas_quota_id_actions_request_edit_post(quota_id, opts = {})
      quotas_quota_id_actions_request_edit_post_with_http_info(quota_id, opts)
      nil
    end

    # Request quota limit change.
    # Sends a request to edit the limit of a quota.
    # @param quota_id [String] The ID of the Quota.
    # @param [Hash] opts the optional parameters
    # @option opts [QuotaEditLimitRequest] :quota_edit_limit_request 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def quotas_quota_id_actions_request_edit_post_with_http_info(quota_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: QuotasApi.quotas_quota_id_actions_request_edit_post ...'
      end
      # verify the required parameter 'quota_id' is set
      if @api_client.config.client_side_validation && quota_id.nil?
        fail ArgumentError, "Missing the required parameter 'quota_id' when calling QuotasApi.quotas_quota_id_actions_request_edit_post"
      end
      # resource path
      local_var_path = '/quotas/{quotaId}/actions/request-edit'.sub('{' + 'quotaId' + '}', CGI.escape(quota_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'quota_edit_limit_request'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"QuotasApi.quotas_quota_id_actions_request_edit_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: QuotasApi#quotas_quota_id_actions_request_edit_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a quota.
    # Get account quota details.
    # @param quota_id [String] The ID of the Quota.
    # @param [Hash] opts the optional parameters
    # @return [Quota]
    def quotas_quota_id_get(quota_id, opts = {})
      data, _status_code, _headers = quotas_quota_id_get_with_http_info(quota_id, opts)
      data
    end

    # Get a quota.
    # Get account quota details.
    # @param quota_id [String] The ID of the Quota.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Quota, Integer, Hash)>] Quota data, response status code and response headers
    def quotas_quota_id_get_with_http_info(quota_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: QuotasApi.quotas_quota_id_get ...'
      end
      # verify the required parameter 'quota_id' is set
      if @api_client.config.client_side_validation && quota_id.nil?
        fail ArgumentError, "Missing the required parameter 'quota_id' when calling QuotasApi.quotas_quota_id_get"
      end
      # resource path
      local_var_path = '/quotas/{quotaId}'.sub('{' + 'quotaId' + '}', CGI.escape(quota_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Quota'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"QuotasApi.quotas_quota_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: QuotasApi#quotas_quota_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
