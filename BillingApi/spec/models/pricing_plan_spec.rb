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
require 'date'

# Unit tests for BillingApi::PricingPlan
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe BillingApi::PricingPlan do
  let(:instance) { BillingApi::PricingPlan.new }

  describe 'test an instance of PricingPlan' do
    it 'should create an instance of PricingPlan' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(BillingApi::PricingPlan)
    end
  end

  describe 'test attribute "sku"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "sku_description"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "location"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["PHX", "ASH", "NLD", "SGP", "CHI", "SEA", "AUS", "GLOBAL"])
      # validator.allowable_values.each do |value|
      #   expect { instance.location = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "pricing_model"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["HOURLY", "METERED", "ONE_MONTH_RESERVATION", "TWELVE_MONTHS_RESERVATION", "TWENTY_FOUR_MONTHS_RESERVATION", "THIRTY_SIX_MONTHS_RESERVATION", "MONTHLY_PACKAGE", "FREE_TIER"])
      # validator.allowable_values.each do |value|
      #   expect { instance.pricing_model = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "price"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "price_unit"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "applicable_discounts"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "correlated_product_code"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "package_quantity"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "package_unit"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "package_details"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
