# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # The request has been accepted for processing but not yet finished and in a
  # terminal state (COMPLETE, PARTIAL_COMPLETE, or FAILED)
  class OrderResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :request_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['request_id'] = 'requestId'
      @_hash['status'] = 'status'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        request_id
        status
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(request_id = nil,
                   status = nil)
      @request_id = request_id unless request_id == SKIP
      @status = status unless status == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      request_id = hash.key?('requestId') ? hash['requestId'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP

      # Create object from extracted values.
      OrderResponse.new(request_id,
                        status)
    end
  end
end