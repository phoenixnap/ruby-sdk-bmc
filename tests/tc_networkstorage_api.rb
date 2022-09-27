# Load the gem
require 'pnap_network_storage_api'
require 'oauth2'

require 'test/unit'
require "test/unit/runner/junitxml"
require 'uri'
require 'net/http'
require './testutils'
require 'json'

NetworkStorageApi.configure do |config|
    config.access_token = "fake"

    # Changing host to mock server
    config.host = '127.0.0.1:1080'
    config.scheme = 'http'
    config.server_index = nil 
end

class TC_NetworkStorageApi < Test::Unit::TestCase

    def verify_called_once(expectation)
      # Result retrieved from server's verification
      # Verifying expectation matched exactly once.
      verifyResult = TestUtils.verify_expectation_matched_times(expectation, 1)
  
      # Asserts a successful result.
      # If not successful, will print the body of verifyResult to debug.
      assert_equal '202', "#{verifyResult.code}", "API should have been hit exactly once. MockServer returned #{verifyResult.code}.\n #{verifyResult.body}"
    end
  
    def setup
      TestUtils.reset_mockserver
    end
  
    def teardown
      TestUtils.reset_expectations
    end

    def test_get_storageNetworks
        request, response = TestUtils.generate_payloads_from('networkstorageapi/networkstorage_get')
        expectation = TestUtils.setup_expectation(request, response, 1)
        
        api_instance = NetworkStorageApi::StorageNetworksApi.new
        opts = TestUtils.generate_query_params(request)
    
        result = api_instance.storage_networks_get(opts)

        # Parsing time for comparison
        response[:body][0][:createdOn] = Time.parse(response[:body][0][:createdOn])
        response[:body][0][:volumes][0][:createdOn] = Time.parse(response[:body][0][:volumes][0][:createdOn])
    
        assert_equal response[:body], [result[0].to_hash.compact]
    
        self.verify_called_once expectation
    end

    def test_get_storageNetwork_by_id
        request, response = TestUtils.generate_payloads_from('networkstorageapi/networkstorage_get_by_id')
        expectation = TestUtils.setup_expectation(request, response, 1)
        
        api_instance = NetworkStorageApi::StorageNetworksApi.new
        storagenetwork_id = TestUtils.extract_id_from(request, :storageNetworkId)
    
        result = api_instance.storage_networks_id_get(storagenetwork_id)

        # Parsing time for comparison
        response[:body][:createdOn] = Time.parse(response[:body][:createdOn])
        response[:body][:volumes][0][:createdOn] = Time.parse(response[:body][:volumes][0][:createdOn])
    
        assert_equal response[:body], result.to_hash.compact
    
        self.verify_called_once expectation
    end

    def test_post_storageNetworks
        request, response = TestUtils.generate_payloads_from('networkstorageapi/networkstorage_post')
        expectation = TestUtils.setup_expectation(request, response, 1)
        
        api_instance = NetworkStorageApi::StorageNetworksApi.new
        storagenetwork_create = NetworkStorageApi::StorageNetworkCreate.build_from_hash(TestUtils.extract_request_body(request))
    
        opts = {
            storage_network_create: storagenetwork_create
        }

        result = api_instance.storage_networks_post(opts)

        # Parsing time for comparison
        response[:body][:createdOn] = Time.parse(response[:body][:createdOn])
        response[:body][:volumes][0][:createdOn] = Time.parse(response[:body][:volumes][0][:createdOn])
    
        assert_equal response[:body], result.to_hash.compact
    
        self.verify_called_once expectation
    end

    def test_patch_storageNetwork_by_id
        request, response = TestUtils.generate_payloads_from('networkstorageapi/networkstorage_patch_by_id')
        expectation = TestUtils.setup_expectation(request, response, 1)
        
        api_instance = NetworkStorageApi::StorageNetworksApi.new
        storagenetwork_id = TestUtils.extract_id_from(request, :storageNetworkId)
        storagenetwork_update = NetworkStorageApi::StorageNetworkUpdate.build_from_hash(TestUtils.extract_request_body(request))

        opts = {
            storage_network_update: storagenetwork_update
        }
    
        result = api_instance.storage_networks_id_patch(storagenetwork_id, opts)

        # Parsing time for comparison
        response[:body][:createdOn] = Time.parse(response[:body][:createdOn])
        response[:body][:volumes][0][:createdOn] = Time.parse(response[:body][:volumes][0][:createdOn])
    
        assert_equal response[:body], result.to_hash.compact
    
        self.verify_called_once expectation
    end

    def test_delete_storageNetwork_by_id
        request, response = TestUtils.generate_payloads_from('networkstorageapi/networkstorage_delete_by_id')
        expectation = TestUtils.setup_expectation(request, response, 1)
        
        api_instance = NetworkStorageApi::StorageNetworksApi.new
        storagenetwork_id = TestUtils.extract_id_from(request, :storageNetworkId)
    
        result = api_instance.storage_networks_id_delete(storagenetwork_id)
    
        assert_nil result
    
        self.verify_called_once expectation
    end

    def test_get_volumes_by_storageNetwork_id
        request, response = TestUtils.generate_payloads_from('networkstorageapi/networkstorage_get_volumes')
        expectation = TestUtils.setup_expectation(request, response, 1)
        
        api_instance = NetworkStorageApi::StorageNetworksApi.new
        storagenetwork_id = TestUtils.extract_id_from(request, :storageNetworkId)
    
        result = api_instance.storage_networks_storage_network_id_volumes_get(storagenetwork_id)

        # Parsing time for comparison
        response[:body][0][:createdOn] = Time.parse(response[:body][0][:createdOn])
    
        assert_equal response[:body], [result[0].to_hash.compact]
    
        self.verify_called_once expectation
    end

    def test_get_volume_by_storageNetwork_id_and_volume_id
        request, response = TestUtils.generate_payloads_from('networkstorageapi/networkstorage_get_volume_by_id')
        expectation = TestUtils.setup_expectation(request, response, 1)
        
        api_instance = NetworkStorageApi::StorageNetworksApi.new
        storagenetwork_id = TestUtils.extract_id_from(request, :storageNetworkId)
        volume_id = TestUtils.extract_id_from(request, :volumeId)
    
        result = api_instance.storage_networks_storage_network_id_volumes_volume_id_get(storagenetwork_id, volume_id)

        # Parsing time for comparison
        response[:body][:createdOn] = Time.parse(response[:body][:createdOn])
    
        assert_equal response[:body], result.to_hash.compact
    
        self.verify_called_once expectation        
    end
end