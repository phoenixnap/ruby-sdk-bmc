task :install do
  version = File.read(File.expand_path('../VERSION', __FILE__)).strip
  sh %(gem build bmc-sdk.gemspec)
  sh %(gem install bmc-sdk-#{version}.gem)
end

task :push do
  version = File.read(File.expand_path('../VERSION', __FILE__)).strip
  sh %(gem push bmc-sdk-#{version}.gem)
end

task :default => [:install]
