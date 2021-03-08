# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
  # An enum for SDK environments.
  class Environment
    ENVIRONMENT = [
      PRODUCTION = 'production'.freeze,
      CUSTOM = 'custom'.freeze
    ].freeze
  end

  # An enum for API servers.
  class Server
    SERVER = [
      DEFAULT = 'default'.freeze,
      MESSAGINGDEFAULT = 'MessagingDefault'.freeze,
      MULTIFACTORAUTHDEFAULT = 'MultiFactorAuthDefault'.freeze,
      VOICEDEFAULT = 'VoiceDefault'.freeze,
      WEBRTCDEFAULT = 'WebRtcDefault'.freeze
    ].freeze
  end

  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration
    # The attribute readers for properties.
    attr_reader :http_client
    attr_reader :timeout
    attr_reader :max_retries
    attr_reader :retry_interval
    attr_reader :backoff_factor
    attr_reader :environment
    attr_reader :base_url
    attr_reader :messaging_basic_auth_user_name
    attr_reader :messaging_basic_auth_password
    attr_reader :multi_factor_auth_basic_auth_user_name
    attr_reader :multi_factor_auth_basic_auth_password
    attr_reader :voice_basic_auth_user_name
    attr_reader :voice_basic_auth_password
    attr_reader :web_rtc_basic_auth_user_name
    attr_reader :web_rtc_basic_auth_password

    class << self
      attr_reader :environments
    end

    def initialize(timeout: 60, max_retries: 0, retry_interval: 1,
                   backoff_factor: 1, environment: Environment::PRODUCTION,
                   base_url: 'https://www.example.com',
                   messaging_basic_auth_user_name: 'TODO: Replace',
                   messaging_basic_auth_password: 'TODO: Replace',
                   multi_factor_auth_basic_auth_user_name: 'TODO: Replace',
                   multi_factor_auth_basic_auth_password: 'TODO: Replace',
                   voice_basic_auth_user_name: 'TODO: Replace',
                   voice_basic_auth_password: 'TODO: Replace',
                   web_rtc_basic_auth_user_name: 'TODO: Replace',
                   web_rtc_basic_auth_password: 'TODO: Replace')
      # The value to use for connection timeout
      @timeout = timeout

      # The number of times to retry an endpoint call if it fails
      @max_retries = max_retries

      # Pause in seconds between retries
      @retry_interval = retry_interval

      # The amount to multiply each successive retry's interval amount
      # by in order to provide backoff
      @backoff_factor = backoff_factor

      # Current API environment
      @environment = String(environment)

      # baseUrl value
      @base_url = base_url

      # The username to use with basic authentication
      @messaging_basic_auth_user_name = messaging_basic_auth_user_name

      # The password to use with basic authentication
      @messaging_basic_auth_password = messaging_basic_auth_password

      # The username to use with basic authentication
      @multi_factor_auth_basic_auth_user_name = multi_factor_auth_basic_auth_user_name

      # The password to use with basic authentication
      @multi_factor_auth_basic_auth_password = multi_factor_auth_basic_auth_password

      # The username to use with basic authentication
      @voice_basic_auth_user_name = voice_basic_auth_user_name

      # The password to use with basic authentication
      @voice_basic_auth_password = voice_basic_auth_password

      # The username to use with basic authentication
      @web_rtc_basic_auth_user_name = web_rtc_basic_auth_user_name

      # The password to use with basic authentication
      @web_rtc_basic_auth_password = web_rtc_basic_auth_password

      # The Http Client to use for making requests.
      @http_client = create_http_client
    end

    def clone_with(timeout: nil, max_retries: nil, retry_interval: nil,
                   backoff_factor: nil, environment: nil, base_url: nil,
                   messaging_basic_auth_user_name: nil,
                   messaging_basic_auth_password: nil,
                   multi_factor_auth_basic_auth_user_name: nil,
                   multi_factor_auth_basic_auth_password: nil,
                   voice_basic_auth_user_name: nil,
                   voice_basic_auth_password: nil,
                   web_rtc_basic_auth_user_name: nil,
                   web_rtc_basic_auth_password: nil)
      timeout ||= self.timeout
      max_retries ||= self.max_retries
      retry_interval ||= self.retry_interval
      backoff_factor ||= self.backoff_factor
      environment ||= self.environment
      base_url ||= self.base_url
      messaging_basic_auth_user_name ||= self.messaging_basic_auth_user_name
      messaging_basic_auth_password ||= self.messaging_basic_auth_password
      multi_factor_auth_basic_auth_user_name ||= self.multi_factor_auth_basic_auth_user_name
      multi_factor_auth_basic_auth_password ||= self.multi_factor_auth_basic_auth_password
      voice_basic_auth_user_name ||= self.voice_basic_auth_user_name
      voice_basic_auth_password ||= self.voice_basic_auth_password
      web_rtc_basic_auth_user_name ||= self.web_rtc_basic_auth_user_name
      web_rtc_basic_auth_password ||= self.web_rtc_basic_auth_password

      Configuration.new(
        timeout: timeout, max_retries: max_retries,
        retry_interval: retry_interval, backoff_factor: backoff_factor,
        environment: environment, base_url: base_url,
        messaging_basic_auth_user_name: messaging_basic_auth_user_name,
        messaging_basic_auth_password: messaging_basic_auth_password,
        multi_factor_auth_basic_auth_user_name: multi_factor_auth_basic_auth_user_name,
        multi_factor_auth_basic_auth_password: multi_factor_auth_basic_auth_password,
        voice_basic_auth_user_name: voice_basic_auth_user_name,
        voice_basic_auth_password: voice_basic_auth_password,
        web_rtc_basic_auth_user_name: web_rtc_basic_auth_user_name,
        web_rtc_basic_auth_password: web_rtc_basic_auth_password
      )
    end

    def create_http_client
      FaradayClient.new(timeout: timeout, max_retries: max_retries,
                        retry_interval: retry_interval,
                        backoff_factor: backoff_factor)
    end

    # All the environments the SDK can run in.
    ENVIRONMENTS = {
      Environment::PRODUCTION => {
        Server::DEFAULT => 'api.bandwidth.com',
        Server::MESSAGINGDEFAULT => 'https://messaging.bandwidth.com/api/v2',
        Server::MULTIFACTORAUTHDEFAULT => 'https://mfa.bandwidth.com/api/v1',
        Server::VOICEDEFAULT => 'https://voice.bandwidth.com',
        Server::WEBRTCDEFAULT => 'https://api.webrtc.bandwidth.com/v1'
      },
      Environment::CUSTOM => {
        Server::DEFAULT => '{base_url}',
        Server::MESSAGINGDEFAULT => '{base_url}',
        Server::MULTIFACTORAUTHDEFAULT => '{base_url}',
        Server::VOICEDEFAULT => '{base_url}',
        Server::WEBRTCDEFAULT => '{base_url}'
      }
    }.freeze

    # Generates the appropriate base URI for the environment and the server.
    # @param [Configuration::Server] The server enum for which the base URI is
    # required.
    # @return [String] The base URI.
    def get_base_uri(server = Server::DEFAULT)
      parameters = {
        'base_url' => { 'value' => base_url, 'encode' => false }
      }
      APIHelper.append_url_with_template_parameters(
        ENVIRONMENTS[environment][server], parameters
      )
    end
  end
end
