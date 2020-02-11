# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # ApiModifyCallRequest Model.
  class ApiModifyCallRequest < BaseModel
    # TODO: Write general description for this method
    # @return [State1Enum]
    attr_accessor :state

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :redirect_url

    # TODO: Write general description for this method
    # @return [RedirectMethodEnum]
    attr_accessor :redirect_method

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :username

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :password

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tag

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['state'] = 'state'
      @_hash['redirect_url'] = 'redirectUrl'
      @_hash['redirect_method'] = 'redirectMethod'
      @_hash['username'] = 'username'
      @_hash['password'] = 'password'
      @_hash['tag'] = 'tag'
      @_hash
    end

    def initialize(redirect_url = nil,
                   state = nil,
                   redirect_method = nil,
                   username = nil,
                   password = nil,
                   tag = nil)
      @state = state
      @redirect_url = redirect_url
      @redirect_method = redirect_method
      @username = username
      @password = password
      @tag = tag
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      redirect_url = hash['redirectUrl']
      state = hash['state']
      redirect_method = hash['redirectMethod']
      username = hash['username']
      password = hash['password']
      tag = hash['tag']

      # Create object from extracted values.
      ApiModifyCallRequest.new(redirect_url,
                               state,
                               redirect_method,
                               username,
                               password,
                               tag)
    end
  end
end
