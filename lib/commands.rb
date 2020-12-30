require 'json'

module Bmc::Sdk

  ##
  # CreateServer command create (request) a new server for account. Server DNS will be configured to access Google's public DNS at 8.8.8.8.
  #

  class CreateServer
    attr_accessor :server

    # server is a ProvisionedServer
    def initialize(client, server)
      @client = client
      @server = server
    end

    def execute
      return @client.post(
        "#{Entrypoint}servers",
        headers: {'Content-Type': 'application/json'},
        body: @server.to_json)
    end
  end

  ##
  # DeleteServer command will deprovision specific server with the given server ID.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/routes/servers/%7Bserver_id%7D/delete

  class DeleteServer
    attr_accessor :serverID

    def initialize(client, serverID)
      @client = client
      @serverID = serverID
    end

    def execute
      return @client.delete(
        "#{Entrypoint}servers/#{serverID}",
        headers: {'Content-Type': 'application/json'})
    end
  end

  ##
  # GetServer command will get server properties for a given server ID.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/routes/servers/%7Bserver_id%7D/get

  class GetServer
    attr_accessor :serverID

    def initialize(client, serverID)
      @client = client
      @serverID = serverID
    end

    def execute
      return @client.get(
        "#{Entrypoint}servers/#{serverID}", 
        headers: {'Content-Type': 'application/json'})
    end
  end

  ##
  # GetServers command will get server properties for all servers in an account.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/routes/servers/get

  class GetServers
    def initialize(client)
      @client = client
    end

    def execute
      return @client.get(
        "#{Entrypoint}servers",
        headers: {'Content-Type': 'application/json'})
    end
  end

  ##
  # PowerOff command will power off a specific server.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/routes/servers/%7Bserver_id%7D/actions/power-off/post

  class PowerOff
    attr_accessor :serverID

    def initialize(client, serverID)
      @client = client
      @serverID = serverID
    end

    def execute
      return @client.post(
        "#{Entrypoint}servers/#{serverID}/actions/power-off", 
        headers: {'Content-Type': 'application/json'})
    end
  end

  ##
  # PowerOn command will power on a specific server.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/routes/servers/%7Bserver_id%7D/actions/power-on/post

  class PowerOn
    attr_accessor :serverID

    def initialize(client, serverID)
      @client = client
      @serverID = serverID
    end

    def execute
      return @client.post(
        "#{Entrypoint}servers/#{serverID}/actions/power-on", 
        headers: {'Content-Type': 'application/json'})
    end
  end

  ##
  # Reboot command will reboot a specific server.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/routes/servers/%7Bserver_id%7D/actions/reboot/post

  class Reboot
    attr_accessor :serverID

    def initialize(client, serverID)
      @client = client
      @serverID = serverID
    end

    def execute
      return @client.post(
        "#{Entrypoint}servers/#{serverID}/actions/reboot", 
        headers: {'Content-Type': 'application/json'})
    end
  end

  ##
  # Reset command will reset the configuration for a specific server.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/routes/servers/%7Bserver_id%7D/actions/reset/post

  class Reset
    attr_accessor :server

    # server is a ProvisionedServer
    def initialize(client, server)
      @client = client
      @server = server
    end

    def execute
      return @client.post(
        "#{Entrypoint}servers/#{@server.id}/actions/reset",
        headers: {'Content-Type': 'application/json'},
        body: @server.to_json)
    end
  end

  ##
  # Shutdown command will shutdown a specific server
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/routes/servers/%7Bserver_id%7D/actions/shutdown/post

  class Shutdown
    attr_accessor :serverID

    def initialize(client, serverID)
      @client = client
      @serverID = serverID
    end

    def execute
      return @client.post(
        "#{Entrypoint}servers/#{serverID}/actions/shutdown", 
        headers: {'Content-Type': 'application/json'})
    end
  end

  ##
  # GetSSHKeys command will list all SSH keys associated with an account
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/routes/ssh-keys/get

  class GetSSHKeys
   def initialize(client)
     @client = client
   end

   def execute
     return @client.get(
       "#{Entrypoint}ssh-keys",
       headers: {'Content-Type': 'application/json'})
    end
  end

  ##
  # CreateSSHKey command will create a new SSH key with the provided properties.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/routes/ssh-keys/post

  class CreateSSHKey
    attr_accessor :sshKey

    def initialize(client, sshKey)
      @client = client
      @sshKey = sshKey
    end

    def execute
      return @client.post(
        "#{Entrypoint}ssh-keys",
        headers: {'Content-Type': 'application/json'},
        body: @sshKey.to_json)
    end
  end

  ##
  # DeleteSSHKey command will delete the SSH key with the specified ID.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/routes/ssh-keys/%7Bssh_key_id%7D/delete

  class DeleteSSHKey
    attr_accessor :sshKeyID

    def initialize(client, sshKeyID)
      @client = client
      @sshKeyID = sshKeyID
    end

    def execute
      return @client.delete(
        "#{Entrypoint}ssh-keys/#{sshKeyID}",
        headers: {'Content-Type': 'application/json'})
    end
  end

  ##
  # GetSSHKey command will retrieve the SSH key with the specified ID.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/routes/ssh-keys/%7Bssh_key_id%7D/get

  class GetSSHKey
    attr_accessor :sshKeyID

    def initialize(client, sshKeyID)
      @client = client
      @sshKeyID = sshKeyID
    end

    def execute
      return @client.get(
        "#{Entrypoint}ssh-keys/#{sshKeyID}",
        headers: {'Content-Type': 'application/json'})
    end
  end

  ##
  # GetSSHKey command will update the SSH key with the specified ID.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/routes/ssh-keys/%7Bssh_key_id%7D/put

  class EditSSHKey
    attr_accessor :sshKey

    def initialize(client, sshKey)
      @client = client
      @sshKey = sshKey
    end

    def execute
      return @client.put(
        "#{Entrypoint}ssh-keys/#{@sshKey.id}",
        headers: {'Content-Type': 'application/json'},
        body: @sshKey.to_json)
    end
  end
end
