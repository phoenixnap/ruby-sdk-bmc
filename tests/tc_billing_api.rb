# Load the gem
require 'pnap_billing_api'
require 'oauth2'

require 'test/unit'
require "test/unit/runner/junitxml"
require 'uri'
require 'net/http'
require './testutils'
require 'json'

BillingApi.configure do |config|
  config.access_token = "fake"

  # Changing host to mock server
  config.host = '127.0.0.1:1080'
  config.scheme = 'http'
  config.server_index = nil
end

class TC_BillingApi < Test::Unit::TestCase

  def verify_called_once(expectation)
    # Result retrieved from server's verification
    # Verifying expectation matched exactly once.
    verify_result = TestUtils.verify_expectation_matched_times(expectation, 1)

    # Asserts a successful result.
    # If not successful, will print the body of verify_result to debug.
    assert_equal '202', "#{verify_result.code}", "API should have been hit exactly once. MockServer returned #{verify_result.code}.\n #{verify_result.body}"
  end

  def setup
    TestUtils.reset_mockserver
  end

  def teardown
    TestUtils.reset_expectations
  end

  def test_get_account_billing_configuration_me
    request, response = TestUtils.generate_payloads_from('billingapi/billing_configurations/account_billing_configurations_me_get')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = BillingApi::BillingConfigurationsApi.new

    result = api_instance.account_billing_configuration_me_get

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_get_product_availability
    request, response = TestUtils.generate_payloads_from('billingapi/products/product_availability_get')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = BillingApi::ProductsApi.new
    opts = {
      product_category: ['SERVER'],
      product_code: ['code'],
      show_only_min_quantity_available: true,
      location: [BillingApi::LocationEnum::PHX],
      solution: ['SERVER_RANCHER'],
      min_quantity: 2
    }

    result = api_instance.product_availability_get(opts)

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end

  # def test_get_products
  #   request, response = TestUtils.generate_payloads_from('billingapi/products/products_get')
  #   expectation = TestUtils.setup_expectation(request, response, 1)
  #
  #   api_instance = BillingApi::ProductsApi.new
  #   opts = {
  #     product_code: 'd1.tiny',
  #     product_category: 'server',
  #     sku_code: 'xxx-xxx-xxx',
  #     location: 'PHX'
  #   }
  #
  #   result = api_instance.products_get(opts)
  #
  #   assert_equal response[:body], [result[0].to_hash.compact]
  #
  #   self.verify_called_once expectation
  # end

end