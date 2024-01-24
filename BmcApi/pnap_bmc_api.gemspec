# -*- encoding: utf-8 -*-

=begin
#Bare Metal Cloud API

#Create, power off, power on, reset, reboot, or shut down your server with the Bare Metal Cloud API.  Deprovision servers, get or edit SSH key details, assign public IPs, assign servers to networks and a lot more.  Manage your infrastructure more efficiently using just a few simple API calls.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/how-to-deploy-bare-metal-cloud-server' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/bmc/v1/)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "pnap_bmc_api/version"

Gem::Specification.new do |s|
  s.name        = "pnap_bmc_api"
  s.version     = BmcApi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["PhoenixNAP"]
  s.email       = ["support@phoenixnap.com"]
  s.homepage    = "https://phoenixnap.com/bare-metal-cloud"
  s.summary     = "Bare Metal Cloud API Ruby Gem"
  s.description = "Bare Metal Cloud API Ruby Gem"
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
