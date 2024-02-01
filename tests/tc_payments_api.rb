# Load the gem
require 'pnap_payments_api'
require 'oauth2'

require 'test/unit'
require "test/unit/runner/junitxml"
require 'uri'
require 'net/http'
require './testutils'
require 'json'

PaymentsApi.configure do |config|
  config.access_token = "fake"

  # Changing host to mock server
  config.host = '127.0.0.1:1080'
  config.scheme = 'http'
  config.server_index = nil
end

class TC_PaymentsApi < Test::Unit::TestCase

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

  def test_get_transactions
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('paymentsapi/transactions_get')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = PaymentsApi::TransactionsApi.new
    opts = TestUtils.generate_query_params(request)

    # Our api is expecting all two-word key names to be camelCase, but ruby's generator adheres to normal ruby styling and is expecting them to be sent in snake_case.
    # The `transactions_get_with_http_info` method will transform the opts we send into proper query params with camelCase styling to adhere to the api expectations,
    # but the validation is done by explicitly searching for snake_case keys, so the keys need to be replaced here.
    # The keys are not replaced in the payload because that is being used to setup the expectation in mockserver.
    opts.delete(:sortDirection)
    opts[:sort_direction] = 'DESC'
    opts.delete(:sortField)
    opts[:sort_field] = 'date'

    # Mockserver wants the expectation to be setup using strings, but the endpoint method has some integer validation which can only be done on integer types,
    # so the values are set to integer here
    opts[:limit] = opts[:limit].to_i
    opts[:offset] = opts[:offset].to_i

    result = api_instance.transactions_get(opts)

    # Parsing time for comparison
    response[:body][:results][0][:date] = Time.parse(response[:body][:results][0][:date])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_get_transactions_by_id
    # Setting up expectation
    request, response = TestUtils.generate_payloads_from('paymentsapi/transactions_get_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = PaymentsApi::TransactionsApi.new
    transaction_id = TestUtils.extract_id_from(request)

    result = api_instance.transaction_id_get(transaction_id)

    # Parsing time for comparison
    response[:body][:date] = Time.parse(response[:body][:date])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

end