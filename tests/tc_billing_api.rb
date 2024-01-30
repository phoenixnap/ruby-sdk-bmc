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

  # def test_get_account_billing_configuration_me
  #   request, response = TestUtils.generate_payloads_from('billingapi/billing_configurations/account_billing_configurations_me_get')
  #   expectation = TestUtils.setup_expectation(request, response, 1)
  #
  #   api_instance = BillingApi::BillingConfigurationsApi.new
  #
  #   result = api_instance.account_billing_configuration_me_get
  #
  #   assert_equal response[:body], result.to_hash.compact
  #
  #   self.verify_called_once expectation
  # end
  #
  # def test_get_product_availability
  #   request, response = TestUtils.generate_payloads_from('billingapi/products/product_availability_get')
  #   expectation = TestUtils.setup_expectation(request, response, 1)
  #
  #   api_instance = BillingApi::ProductsApi.new
  #   opts = {
  #     product_category: ['SERVER'],
  #     product_code: ['code', 'random'],
  #     show_only_min_quantity_available: true,
  #     location: [BillingApi::LocationEnum::PHX],
  #     solution: ['SERVER_RANCHER'],
  #     min_quantity: 2
  #   }
  #
  #   result = api_instance.product_availability_get(opts)
  #
  #   assert_equal response[:body], [result[0].to_hash.compact]
  #
  #   self.verify_called_once expectation
  # end

  def test_get_products
    request, response = TestUtils.generate_payloads_from('billingapi/products/products_get')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = BillingApi::ProductsApi.new
    opts = {
      product_code: 'd1.tiny',
      product_category: 'server',
      sku_code: 'xxx-xxx-xxx',
      location: 'PHX'
    }

    result = api_instance.products_get(opts)

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end

  def test_get_rated_usage
    request, response = TestUtils.generate_payloads_from('billingapi/rated_usage/rated_usage_get')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = BillingApi::RatedUsageApi.new
    from_year_month = '2020-03'
    to_year_month = '2020-04'
    opts = {
      product_category: 'SERVER'
    }

    result = api_instance.rated_usage_get(from_year_month, to_year_month, opts)

    # Parsing time for comparison
    response[:body][0][:startDateTime] = Time.parse(response[:body][0][:startDateTime])
    response[:body][0][:endDateTime] = Time.parse(response[:body][0][:endDateTime])

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end

  def test_get_rated_usage_month_to_date
    request, response = TestUtils.generate_payloads_from('billingapi/rated_usage/rated_usage_month_to_date_get')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = BillingApi::RatedUsageApi.new
    opts = {
      product_category: 'SERVER'
    }

    result = api_instance.rated_usage_month_to_date_get(opts)

    # Parsing time for comparison
    response[:body][0][:startDateTime] = Time.parse(response[:body][0][:startDateTime])
    response[:body][0][:endDateTime] = Time.parse(response[:body][0][:endDateTime])

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end

  def test_get_reservations
    request, response = TestUtils.generate_payloads_from('billingapi/reservations/reservations_get')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = BillingApi::ReservationsApi.new
    opts = {
      product_category: 'SERVER'
    }

    result = api_instance.reservations_get(opts)

    # Parsing time for comparison
    response[:body][0][:startDateTime] = Time.parse(response[:body][0][:startDateTime])
    response[:body][0][:endDateTime] = Time.parse(response[:body][0][:endDateTime])
    response[:body][0][:lastRenewalDateTime] = Time.parse(response[:body][0][:lastRenewalDateTime])
    response[:body][0][:nextRenewalDateTime] = Time.parse(response[:body][0][:nextRenewalDateTime])
    # Parsing float for comparison
    response[:body][0][:price] = response[:body][0][:price].to_f

    assert_equal response[:body], [result[0].to_hash.compact]

    self.verify_called_once expectation
  end

  def test_post_reservations
    request, response = TestUtils.generate_payloads_from('billingapi/reservations/reservations_post')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = BillingApi::ReservationsApi.new
    opts = {
      reservation_request: BillingApi::ReservationRequest.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.reservations_post(opts)

    # Parsing time for comparison
    response[:body][:startDateTime] = Time.parse(response[:body][:startDateTime])
    response[:body][:endDateTime] = Time.parse(response[:body][:endDateTime])
    response[:body][:lastRenewalDateTime] = Time.parse(response[:body][:lastRenewalDateTime])
    response[:body][:nextRenewalDateTime] = Time.parse(response[:body][:nextRenewalDateTime])
    # Parsing float for comparison
    response[:body][:price] = response[:body][:price].to_f

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_get_reservations_by_id
    request, response = TestUtils.generate_payloads_from('billingapi/reservations/reservations_get_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = BillingApi::ReservationsApi.new
    id = TestUtils.extract_id_from(request)

    result = api_instance.reservations_reservation_id_get(id)

    # Parsing time for comparison
    response[:body][:startDateTime] = Time.parse(response[:body][:startDateTime])
    response[:body][:endDateTime] = Time.parse(response[:body][:endDateTime])
    response[:body][:lastRenewalDateTime] = Time.parse(response[:body][:lastRenewalDateTime])
    response[:body][:nextRenewalDateTime] = Time.parse(response[:body][:nextRenewalDateTime])
    # Parsing float for comparison
    response[:body][:price] = response[:body][:price].to_f

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_reservations_actions_disable_auto_renew
    request, response = TestUtils.generate_payloads_from('billingapi/reservations/reservations_actions_disable_auto_renew')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = BillingApi::ReservationsApi.new
    id = TestUtils.extract_id_from(request)
    opts = {
      reservation_auto_renew_disable_request: BillingApi::ReservationAutoRenewDisableRequest.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.reservations_reservation_id_actions_auto_renew_disable_post(id, opts)

    # Parsing time for comparison
    response[:body][:startDateTime] = Time.parse(response[:body][:startDateTime])
    response[:body][:endDateTime] = Time.parse(response[:body][:endDateTime])
    response[:body][:lastRenewalDateTime] = Time.parse(response[:body][:lastRenewalDateTime])
    response[:body][:nextRenewalDateTime] = Time.parse(response[:body][:nextRenewalDateTime])
    # Parsing float for comparison
    response[:body][:price] = response[:body][:price].to_f

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_reservations_actions_enable_auto_renew
    request, response = TestUtils.generate_payloads_from('billingapi/reservations/reservations_actions_enable_auto_renew')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = BillingApi::ReservationsApi.new
    id = TestUtils.extract_id_from(request)

    result = api_instance.reservations_reservation_id_actions_auto_renew_enable_post(id)

    # Parsing time for comparison
    response[:body][:startDateTime] = Time.parse(response[:body][:startDateTime])
    response[:body][:endDateTime] = Time.parse(response[:body][:endDateTime])
    response[:body][:lastRenewalDateTime] = Time.parse(response[:body][:lastRenewalDateTime])
    response[:body][:nextRenewalDateTime] = Time.parse(response[:body][:nextRenewalDateTime])
    # Parsing float for comparison
    response[:body][:price] = response[:body][:price].to_f

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_reservations_actions_convert
    request, response = TestUtils.generate_payloads_from('billingapi/reservations/reservations_actions_convert')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = BillingApi::ReservationsApi.new
    id = TestUtils.extract_id_from(request)
    opts = {
      reservation_request: BillingApi::ReservationRequest.build_from_hash(TestUtils.extract_request_body(request))
    }

    result = api_instance.reservations_reservation_id_actions_convert_post(id, opts)

    # Parsing time for comparison
    response[:body][:startDateTime] = Time.parse(response[:body][:startDateTime])
    response[:body][:endDateTime] = Time.parse(response[:body][:endDateTime])
    response[:body][:lastRenewalDateTime] = Time.parse(response[:body][:lastRenewalDateTime])
    response[:body][:nextRenewalDateTime] = Time.parse(response[:body][:nextRenewalDateTime])
    # Parsing float for comparison
    response[:body][:price] = response[:body][:price].to_f

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

end