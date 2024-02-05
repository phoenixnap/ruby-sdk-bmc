=begin
#Billing API

#Automate your infrastructure billing with the Bare Metal Cloud Billing API. Reserve your server instances to ensure guaranteed resource availability for 12, 24, and 36 months. Retrieve your server’s rated usage for a given period and enable or disable auto-renewals.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/phoenixnap-bare-metal-cloud-billing-models' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/billing/v1/)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BillingApi::RatedUsageApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RatedUsageApi' do
  before do
    # run before each test
    @api_instance = BillingApi::RatedUsageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RatedUsageApi' do
    it 'should create an instance of RatedUsageApi' do
      expect(@api_instance).to be_instance_of(BillingApi::RatedUsageApi)
    end
  end

  # unit tests for rated_usage_get
  # List the rated usage.
  # Retrieves all rated usage for given time period. The information is presented as a list of rated usage records. Every record corresponds to a charge. All date &amp; times are in UTC.
  # @param from_year_month From year month (inclusive) to filter rated usage records by.
  # @param to_year_month To year month (inclusive) to filter rated usage records by.
  # @param [Hash] opts the optional parameters
  # @option opts [ProductCategoryEnum] :product_category The product category
  # @return [Array<RatedUsageGet200ResponseInner>]
  describe 'rated_usage_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for rated_usage_month_to_date_get
  # List the rated usage records for the current calendar month.
  # Retrieves all rated usage for the current calendar month. The information is presented as a list of rated usage records. Every record corresponds to a charge. All date &amp; times are in UTC.
  # @param [Hash] opts the optional parameters
  # @option opts [ProductCategoryEnum] :product_category The product category
  # @return [Array<RatedUsageGet200ResponseInner>]
  describe 'rated_usage_month_to_date_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
