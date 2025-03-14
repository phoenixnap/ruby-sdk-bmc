=begin
#Rancher Solution API

#Simplify enterprise-grade Kubernetes cluster operations and management with Rancher on Bare Metal Cloud. Deploy Kubernetes clusters using a few API calls.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/rancher-bmc-integration-kubernetes' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/solutions/rancher/v1beta)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'cgi'

module RancherApi
  class ClustersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cluster list.
    # Cluster list.
    # @param [Hash] opts the optional parameters
    # @return [Array<Cluster>]
    def clusters_get(opts = {})
      data, _status_code, _headers = clusters_get_with_http_info(opts)
      data
    end

    # Cluster list.
    # Cluster list.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Cluster>, Integer, Hash)>] Array<Cluster> data, response status code and response headers
    def clusters_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClustersApi.clusters_get ...'
      end
      # resource path
      local_var_path = '/clusters'

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
      return_type = opts[:debug_return_type] || 'Array<Cluster>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"ClustersApi.clusters_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClustersApi#clusters_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a cluster.
    # Delete a cluster.
    # @param id [String] The Cluster identifier.
    # @param [Hash] opts the optional parameters
    # @return [DeleteResult]
    def clusters_id_delete(id, opts = {})
      data, _status_code, _headers = clusters_id_delete_with_http_info(id, opts)
      data
    end

    # Delete a cluster.
    # Delete a cluster.
    # @param id [String] The Cluster identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteResult, Integer, Hash)>] DeleteResult data, response status code and response headers
    def clusters_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClustersApi.clusters_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ClustersApi.clusters_id_delete"
      end
      # resource path
      local_var_path = '/clusters/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'DeleteResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"ClustersApi.clusters_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClustersApi#clusters_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a Cluster
    # Retrieve a Cluster
    # @param id [String] The Cluster identifier.
    # @param [Hash] opts the optional parameters
    # @return [Cluster]
    def clusters_id_get(id, opts = {})
      data, _status_code, _headers = clusters_id_get_with_http_info(id, opts)
      data
    end

    # Retrieve a Cluster
    # Retrieve a Cluster
    # @param id [String] The Cluster identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Cluster, Integer, Hash)>] Cluster data, response status code and response headers
    def clusters_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClustersApi.clusters_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ClustersApi.clusters_id_get"
      end
      # resource path
      local_var_path = '/clusters/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Cluster'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"ClustersApi.clusters_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClustersApi#clusters_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Rancher Server Deployment.
    # Create a Rancher Server Deployment as described in <a href='https://ranchermanager.docs.rancher.com/v2.6/reference-guides/rancher-manager-architecture#rancher-server-architecture' target='_blank'>Rancher Docs Architecture</a>. Rancher Server allows the creation, import and management of multiple Downstream User Kubernetes Clusters. <b>This is not a Downstream User Cluster</b>. Knowledge base article to help you can be found <a href='https://phoenixnap.com/kb/bmc-rancher-workload-cluster#ftoc-heading-5' target='_blank'>here</a>. 
    # @param cluster [Cluster] 
    # @param [Hash] opts the optional parameters
    # @return [Cluster]
    def clusters_post(cluster, opts = {})
      data, _status_code, _headers = clusters_post_with_http_info(cluster, opts)
      data
    end

    # Create a Rancher Server Deployment.
    # Create a Rancher Server Deployment as described in &lt;a href&#x3D;&#39;https://ranchermanager.docs.rancher.com/v2.6/reference-guides/rancher-manager-architecture#rancher-server-architecture&#39; target&#x3D;&#39;_blank&#39;&gt;Rancher Docs Architecture&lt;/a&gt;. Rancher Server allows the creation, import and management of multiple Downstream User Kubernetes Clusters. &lt;b&gt;This is not a Downstream User Cluster&lt;/b&gt;. Knowledge base article to help you can be found &lt;a href&#x3D;&#39;https://phoenixnap.com/kb/bmc-rancher-workload-cluster#ftoc-heading-5&#39; target&#x3D;&#39;_blank&#39;&gt;here&lt;/a&gt;. 
    # @param cluster [Cluster] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Cluster, Integer, Hash)>] Cluster data, response status code and response headers
    def clusters_post_with_http_info(cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClustersApi.clusters_post ...'
      end
      # verify the required parameter 'cluster' is set
      if @api_client.config.client_side_validation && cluster.nil?
        fail ArgumentError, "Missing the required parameter 'cluster' when calling ClustersApi.clusters_post"
      end
      # resource path
      local_var_path = '/clusters'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cluster)

      # return_type
      return_type = opts[:debug_return_type] || 'Cluster'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"ClustersApi.clusters_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClustersApi#clusters_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
