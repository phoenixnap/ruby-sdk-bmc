=begin
#Payments API

#Payments API are currently designed to fetch Transactions only.

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for PaymentsApi::TransactionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TransactionsApi' do
  before do
    # run before each test
    @api_instance = PaymentsApi::TransactionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionsApi' do
    it 'should create an instance of TransactionsApi' do
      expect(@api_instance).to be_instance_of(PaymentsApi::TransactionsApi)
    end
  end

  # unit tests for transaction_id_get
  # Get Transaction.
  # Get transaction details.
  # @param transaction_id The transaction identifier.
  # @param [Hash] opts the optional parameters
  # @return [Transaction]
  describe 'transaction_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for transactions_get
  # Get Transactions.
  # A paginated list of client&#39;s transactions.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The limit of the number of results returned. The number of records returned may be smaller than the limit.
  # @option opts [Integer] :offset The number of items to skip in the results.
  # @option opts [String] :sort_direction Sort Given Field depending on the desired direction. Default sorting is descending.
  # @option opts [String] :sort_field If a sortField is requested, pagination will be done after sorting. Default sorting is by date.
  # @option opts [Time] :from From the date and time (inclusive) to filter transactions by.
  # @option opts [Time] :to To the date and time (inclusive) to filter transactions by.
  # @return [PaginatedTransactions]
  describe 'transactions_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end