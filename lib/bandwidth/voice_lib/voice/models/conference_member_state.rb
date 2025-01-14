# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # ConferenceMemberState Model.
  class ConferenceMemberState < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :call_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :conference_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :member_url

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :mute

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :hold

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :call_ids_to_coach

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['call_id'] = 'callId'
      @_hash['conference_id'] = 'conferenceId'
      @_hash['member_url'] = 'memberUrl'
      @_hash['mute'] = 'mute'
      @_hash['hold'] = 'hold'
      @_hash['call_ids_to_coach'] = 'callIdsToCoach'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        call_id
        conference_id
        member_url
        mute
        hold
        call_ids_to_coach
      ]
    end

    # An array for nullable fields
    def nullables
      %w[
        call_ids_to_coach
      ]
    end

    def initialize(call_id = nil,
                   conference_id = nil,
                   member_url = nil,
                   mute = nil,
                   hold = nil,
                   call_ids_to_coach = nil)
      @call_id = call_id unless call_id == SKIP
      @conference_id = conference_id unless conference_id == SKIP
      @member_url = member_url unless member_url == SKIP
      @mute = mute unless mute == SKIP
      @hold = hold unless hold == SKIP
      @call_ids_to_coach = call_ids_to_coach unless call_ids_to_coach == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      call_id = hash.key?('callId') ? hash['callId'] : SKIP
      conference_id = hash.key?('conferenceId') ? hash['conferenceId'] : SKIP
      member_url = hash.key?('memberUrl') ? hash['memberUrl'] : SKIP
      mute = hash.key?('mute') ? hash['mute'] : SKIP
      hold = hash.key?('hold') ? hash['hold'] : SKIP
      call_ids_to_coach =
        hash.key?('callIdsToCoach') ? hash['callIdsToCoach'] : SKIP

      # Create object from extracted values.
      ConferenceMemberState.new(call_id,
                                conference_id,
                                member_url,
                                mute,
                                hold,
                                call_ids_to_coach)
    end
  end
end
