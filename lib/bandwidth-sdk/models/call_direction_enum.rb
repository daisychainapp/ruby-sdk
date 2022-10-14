=begin
#Bandwidth

#Bandwidth's Communication APIs

The version of the OpenAPI document: 1.0.0
Contact: letstalk@bandwidth.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'date'
require 'time'

module Bandwidth
  class CallDirectionEnum
    INBOUND = "inbound".freeze
    OUTBOUND = "outbound".freeze

    def self.all_vars
      @all_vars ||= [INBOUND, OUTBOUND].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if CallDirectionEnum.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #CallDirectionEnum"
    end
  end
end