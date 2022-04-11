# -*- encoding: utf-8 -*-

=begin
#Rancher Solution API

#Simplify enterprise-grade Kubernetes cluster operations and management with Rancher on Bare Metal Cloud. Deploy Kubernetes clusters using a few API calls.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/rancher-bmc-integration-kubernetes' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/solutions/rancher/v1beta)</b> 

The version of the OpenAPI document: 0.1
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "pnap_rancher_api/version"

Gem::Specification.new do |s|
  s.name        = "pnap_rancher_api"
  s.version     = RancherApi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["PhoenixNAP"]
  s.email       = ["support@phoenixnap.com"]
  s.homepage    = "https://phoenixnap.com/"
  s.summary     = "Rancher Solution API Ruby Gem"
  s.description = "Rancher Solution API Ruby Gem"
  s.license     = "MPL-2.0"
  s.required_ruby_version = ">= 2.4"
  s.metadata = { "source_code_uri" => "https://github.com/phoenixnap/ruby-sdk-bmc-poc" }

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end