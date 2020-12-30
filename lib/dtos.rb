module Bmc::Sdk

  ##
  # ErrorMessage is used to transmit details on error responses.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/types/Error

  class ErrorMessage
    attr_accessor :message, :validationErrors
    def initialize(message, validationErrors)
      @message = message
      @validationErrors = validationErrors
    end
    def to_json(*a)
      {message: @message, validationErrors: @validationErrors}.to_json(*a)
    end
  end

  ##
  # LongServer is used to transmit details on fully specified server responses.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/types/Server

  class LongServer
    attr_accessor :id, :status, :hostname, :description, :privateIPAddresses, :publicIPAddresses, :os, :type, :location, :cpu, :ram, :storage
    def initialize(id, status, hostname, description, privateIPAddresses, publicIPAddresses, os, type, location, cpu, ram, storage)
      @id = id
      @status = status
      @hostname = hostname
      @description = description
      @privateIPAddresses = privateIPAddresses
      @publicIPAddresses = publicIPAddresses
      @os = os
      @type = type
      @location = location
      @cpu = cpu
      @ram = ram
      @storage = storage
    end
    def to_json(*a)
      {id: @id, status: @status, hostname: @hostname, description: @description, privateIpAddresses: @privateIPAddresses, publicIPAddresses: @publicIpAddresses, os: @os, type: @type, location: @location, cpu: @cpu, ram: @ram, storage: @storage }.to_json(*a)
    end
  end

  ##
  # ProvisionedServer is used to transmit details on CreateServer commands.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/types/ServerCreate

  class ProvisionedServer
    attr_accessor :id, :status, :hostname, :description, :os, :type, :location, :sshKeys, :sshKeyIds
    def initialize(id, status, hostname, description, os, type, location, sshKeys, sshKeyIds)
      @id = id
      @status = status
      @hostname = hostname
      @description = description
      @os = os
      @type = type
      @location = location
      @sshKeys = sshKeys
      @sshKeyIds = sshKeyIds
    end
    def to_json(*a)
      {id: @id, status: @status, hostname: @hostname, description: @description, os: @os, type: @type, location: @location, sshKeys: @sshKeys, sshKeyIds: @sshKeyIds}.to_json(*a)
    end
  end

  ##
  # ServerResetSpec is used to transmit details on ServerReset commands.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/types/ServerReset

  class ServerResetSpec
    attr_accessor :id, :sshKeys, :sshKeyIds, :installDefaultSshKeys
    def initialize(id, sshKeys, sshKeyIds, installDefaultSshKeys)
      @id = id
      @sshKeys = sshKeys
      @sshKeyIds = sshKeyIds
      @installDefaultSshKeys = installDefaultSshKeys
    end
    def to_json(*a)
      {id: @id, status: @status, sshKeys: @sshKeys, sshKeyIds: @sshKeyIds, installDefaultSshKeys: @installDefaultSshKeys}.to_json(*a)
    end
  end

  ##
  # SSHKeySpec is used to transmit details for BMC SSH Key objects.
  #
  # @see https://developers.phoenixnap.com/docs/bmc/1/types/SshKey

  class SSHKeySpec
    attr_accessor :id, :default, :name, :key, :fingerprint, :createdOn, :lastUpdatedOn
    def initialize(id, default, name, key, fingerprint, createdOn, lastUpdatedOn)
      @id = id
      @default = default
      @name = name
      @key = key
      @fingerprint = fingerprint
      @createdOn = createdOn
      @lastUpdatedOn = lastUpdatedOn
    end
    def to_json(*a)
      {id: @id, default: @default, name: @name, key: @key, fingerprint: @fingerprint, createdOn: @createdOn, lastUpdatedOn: @lastUpdatedOn}.to_json(*a)
    end
  end
end
