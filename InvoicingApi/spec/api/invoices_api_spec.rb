=begin
#Invoicing API

#List, fetch and pay invoices with the Invoicing API. 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for InvoicingApi::InvoicesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InvoicesApi' do
  before do
    # run before each test
    @api_instance = InvoicingApi::InvoicesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InvoicesApi' do
    it 'should create an instance of InvoicesApi' do
      expect(@api_instance).to be_instance_of(InvoicingApi::InvoicesApi)
    end
  end

  # unit tests for invoices_get
  # List invoices.
  # List invoices.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :number A user-friendly reference number assigned to the invoice.
  # @option opts [String] :status Payment status of the invoice.
  # @option opts [Time] :sent_on_from Minimum value to filter invoices by sent on date.
  # @option opts [Time] :sent_on_to Maximum value to filter invoices by sent on date.
  # @option opts [Integer] :limit The limit of the number of results returned. The number of records returned may be smaller than the limit.
  # @option opts [Integer] :offset The number of items to skip in the results.
  # @option opts [String] :sort_field If a sortField is requested, pagination will be done after sorting. Default sorting is by number.
  # @option opts [String] :sort_direction Sort Given Field depending on the desired direction. Default sorting is descending.
  # @return [PaginatedInvoices]
  describe 'invoices_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for invoices_invoice_id_generate_pdf_post
  # Generate invoice details as PDF.
  # Generate invoice details as PDF.
  # @param invoice_id The unique resource identifier of the Invoice.
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'invoices_invoice_id_generate_pdf_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for invoices_invoice_id_get
  # Get invoice details.
  # Get invoice details.
  # @param invoice_id The unique resource identifier of the Invoice.
  # @param [Hash] opts the optional parameters
  # @return [Invoice]
  describe 'invoices_invoice_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for invoices_invoice_id_pay_post
  # Pay an invoice.
  # Manually pay an invoice.
  # @param invoice_id The unique resource identifier of the Invoice.
  # @param [Hash] opts the optional parameters
  # @option opts [Object] :body 
  # @return [Object]
  describe 'invoices_invoice_id_pay_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
