# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # If requestId exists, the result for that request is returned. See the
  # Examples for details on the various responses that you can receive. 
  # Generally, if you see a Response Code of 0 in a result for a TN, information
  # will be available for it.  Any other Response Code will indicate no
  # information was available for the TN.
  class OrderStatus < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The requestId.
    # @return [String]
    attr_accessor :request_id

    # The status of the request (IN_PROGRESS, COMPLETE, PARTIAL_COMPLETE, or
    # FAILED).
    # @return [String]
    attr_accessor :status

    # The telephone numbers whose lookup failed
    # @return [List of String]
    attr_accessor :failed_telephone_numbers

    # The carrier information results for the specified telephone number.
    # @return [List of Result]
    attr_accessor :result

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['request_id'] = 'requestId'
      @_hash['status'] = 'status'
      @_hash['failed_telephone_numbers'] = 'failedTelephoneNumbers'
      @_hash['result'] = 'result'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        request_id
        status
        failed_telephone_numbers
        result
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(request_id = nil,
                   status = nil,
                   failed_telephone_numbers = nil,
                   result = nil)
      @request_id = request_id unless request_id == SKIP
      @status = status unless status == SKIP
      @failed_telephone_numbers = failed_telephone_numbers unless failed_telephone_numbers == SKIP
      @result = result unless result == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      request_id = hash.key?('requestId') ? hash['requestId'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      failed_telephone_numbers =
        hash.key?('failedTelephoneNumbers') ? hash['failedTelephoneNumbers'] : SKIP
      # Parameter is an array, so we need to iterate through it
      result = nil
      unless hash['result'].nil?
        result = []
        hash['result'].each do |structure|
          result << (Result.from_hash(structure) if structure)
        end
      end

      result = SKIP unless hash.key?('result')

      # Create object from extracted values.
      OrderStatus.new(request_id,
                      status,
                      failed_telephone_numbers,
                      result)
    end
  end
end