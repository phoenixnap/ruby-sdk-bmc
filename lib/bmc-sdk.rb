require 'os'
require 'oauth2'
require 'yaml'

module Bmc
end

##
# This module provides commands and DTOs for working with the BMC API documented at https://developers.phoenixnap.com/docs/bmc/1/overview. 
# Module functions provided here which load configuration assume that client credentials are located in a YAML file at $HOME/.pnap/config.
#

module Bmc::Sdk

  ##
  # The API entrypoint URL.
  Entrypoint = "https://api.phoenixnap.com/bmc/v1/"

  ##
  # The OIDC token URL
  TokenURL = "https://auth.phoenixnap.com/auth/realms/BMC/protocol/openid-connect/token"

  ##
  # The default configuration file location on POSIX systems
  POSIXPath = "/.pnap/config"

  ##
  # The default configuration file location on Windows systems
  WindowsPath = '\\AppData\\Roaming\\pnap\\config'

  ##
  # The computed configuration file location based on the current system
  begin
    ConfigPath = OS.windows? ? Dir.home + WindowsPath : Dir.home + POSIXPath
  rescue ArgumentError, NoMethodError
    ConfigPath = nil
  end

  require 'commands.rb'
  require 'dtos.rb'

  ##
  # This function creates a new HTTP client with integrated OAuth2 with the provided configuration.
  #

  def new_client(config)
    cfg = config.dup
    client = OAuth2::Client.new(
      cfg[:client_id],
      cfg[:client_secret],
      token_url: TokenURL)
    return client.client_credentials.get_token
  end
  module_function :new_client

  ##
  # load_client is a shortcut function which loads configuration from the expected location and uses that configuration to produce a new client.
  #

  def load_client
    cfg = load_config
    return new_client({
      client_id: cfg['client_id'],
      client_secret: cfg['client_secret']
    })
  end
  module_function :load_client

  ##
  # load_config loads a YAML file from the expected file path.

  def load_config
    raise FileNotFound, 'Config file path not found.' if ConfigPath.nil?
    return YAML.load_file(ConfigPath)
  end
  module_function :load_config

end
