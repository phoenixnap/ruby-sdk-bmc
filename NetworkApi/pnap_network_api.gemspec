# -*- encoding: utf-8 -*-

=begin
#Networks API

#Create, list, edit and delete public/private networks with the Network API. Use public networks to place multiple  servers on the same network or VLAN. Assign new servers with IP addresses from the same CIDR range. Use private  networks to avoid unnecessary egress data charges. Model your networks according to your business needs.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#multi-private-backend-network-api' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/networks/v1/)</b> 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "pnap_network_api/version"

Gem::Specification.new do |s|
  s.name        = "pnap_network_api"
  s.version     = NetworkApi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["PhoenixNAP"]
  s.email       = ["support@phoenixnap.com"]
  s.homepage    = "https://phoenixnap.com/bare-metal-cloud"
  s.summary     = "Networks API Ruby Gem"
  s.description = "Networks API Ruby Gem"
  s.license     = "MPL-2.0"
  s.required_ruby_version = ">= 2.4"
  s.metadata    = { "source_code_uri" => "https://github.com/phoenixnap/ruby-sdk-bmc" }

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
