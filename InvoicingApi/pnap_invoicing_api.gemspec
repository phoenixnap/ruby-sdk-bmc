# -*- encoding: utf-8 -*-

=begin
#Invoicing API

#List, fetch and pay invoices with the Invoicing API. 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "pnap_invoicing_api/version"

Gem::Specification.new do |s|
  s.name        = "pnap_invoicing_api"
  s.version     = InvoicingApi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["PhoenixNAP"]
  s.email       = ["support@phoenixnap.com"]
  s.homepage    = "https://phoenixnap.com/bare-metal-cloud"
  s.summary     = "Invoicing API Ruby Gem"
  s.description = "Invoicing API Ruby Gem"
  s.license     = "MPL-2.0"
  s.required_ruby_version = ">= 2.7"
  s.metadata    = { "source_code_uri" => "https://github.com/phoenixnap/ruby-sdk-bmc" }

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
