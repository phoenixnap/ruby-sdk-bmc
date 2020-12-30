Gem::Specification.new do |spec|
  spec.name        = 'bmc-sdk'
  spec.version     = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.summary     = 'An SDK for interacting with the BMC API.'
  spec.description = 'An SDK for interacting with the BMC API. See https://developers.phoenixnap.com/docs/bmc/1/overview'
  spec.email       = 'support@phoenixnap.com'
  spec.author      = 'PhoenixNAP'
  spec.homepage    = 'https://github.com/phoenixnap/bmc-sdk-ruby'
  spec.license     = 'MPL-2.0'
  spec.files       = ["lib/bmc-sdk.rb", "lib/commands.rb", "lib/dtos.rb"]
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_runtime_dependency 'os', '~>1.1'
  spec.add_runtime_dependency 'oauth2', '1.4.4'
end
