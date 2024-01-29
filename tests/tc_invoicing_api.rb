# Load the gem
require 'pnap_invoicing_api'
require 'oauth2'

require 'test/unit'
require "test/unit/runner/junitxml"
require 'uri'
require 'net/http'
require './testutils'
require 'json'

InvoicingApi.configure do |config|
  config.access_token = "fake"

  # Changing host to mock server
  config.host = '127.0.0.1:1080'
  config.scheme = 'http'
  config.server_index = nil
end

class TC_InvoicingApi < Test::Unit::TestCase

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

  def test_get_invoices
    request, response = TestUtils.generate_payloads_from('invoicingapi/invoices_get')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = InvoicingApi::InvoicesApi.new
    opts = {
      number: '13218-1180326',
      status: 'PAID',
      sent_on_from: '2020-04-13T00:00:00Z',
      sent_on_to: '2022-04-13T00:00:00Z',
      limit: 100,
      offset: 0,
      sort_field: 'sentOn',
      sort_direction: 'DESC'
    }

    result = api_instance.invoices_get(opts)

    # Parsing time for comparison
    response[:body][:results][0][:sentOn] = Time.parse(response[:body][:results][0][:sentOn])
    response[:body][:results][0][:dueDate] = Time.parse(response[:body][:results][0][:dueDate])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_get_invoices_by_id
    request, response = TestUtils.generate_payloads_from('invoicingapi/invoices_get_by_id')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = InvoicingApi::InvoicesApi.new
    id = TestUtils.extract_id_from(request)

    result = api_instance.invoices_invoice_id_get(id)

    # Parsing time for comparison
    response[:body][:sentOn] = Time.parse(response[:body][:sentOn])
    response[:body][:dueDate] = Time.parse(response[:body][:dueDate])

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_post_invoices_pay
    request, response = TestUtils.generate_payloads_from('invoicingapi/invoices_pay_post')
    expectation = TestUtils.setup_expectation(request, response, 1)

    api_instance = InvoicingApi::InvoicesApi.new
    id = TestUtils.extract_id_from(request)

    result = api_instance.invoices_invoice_id_pay_post(id)

    assert_equal response[:body], result.to_hash.compact

    self.verify_called_once expectation
  end

  def test_post_invoices_generate_pdf
    # There is currently a bug with openApi generation where endpoints that return File type are executed twice.
    # [invoices_api.rb:103] calls the client with the method `call_api`.
    # In that method, the tempfile is generated from an api call if the return type is File by executing the request in the `download_file` method, but it also directly calls `request.run`

    request, response = TestUtils.generate_payloads_from('invoicingapi/invoices_generate_pdf_post')
    TestUtils.setup_expectation(request, response, 2)

    api_instance = InvoicingApi::InvoicesApi.new
    id = TestUtils.extract_id_from(request)

    result = api_instance.invoices_invoice_id_generate_pdf_post(id)
    assert_true result.instance_of? Tempfile
  end

end