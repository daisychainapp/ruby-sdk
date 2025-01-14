# bandwidth
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Bandwidth
module WebRtc
  # APIController
  class APIController < BaseController
    def initialize(config, http_call_back: nil)
      super(config, http_call_back: http_call_back)
    end

    # Create a new participant under this account.
    # Participants are idempotent, so relevant parameters must be set in this
    # function if desired.
    # @param [String] account_id Required parameter: Account ID
    # @param [Participant] body Optional parameter: Participant parameters
    # @return [AccountsParticipantsResponse] response from the API call
    def create_participant(account_id,
                           body: nil)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::WEBRTCDEFAULT)
      _query_builder << '/accounts/{accountId}/participants'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      WebRtcBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      case _response.status_code
      when 400
        raise APIException.new(
          'Bad Request',
          _response
        )
      when 401
        raise APIException.new(
          'Unauthorized',
          _response
        )
      when 403
        raise APIException.new(
          'Access Denied',
          _response
        )
      end
      unless _response.status_code.between?(200, 208)
        raise ErrorException.new(
          'Unexpected Error',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      ApiResponse.new(
        _response,
        data: AccountsParticipantsResponse.from_hash(decoded)
      )
    end

    # Get participant by ID.
    # @param [String] account_id Required parameter: Account ID
    # @param [String] participant_id Required parameter: Participant ID
    # @return [Participant] response from the API call
    def get_participant(account_id,
                        participant_id)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::WEBRTCDEFAULT)
      _query_builder << '/accounts/{accountId}/participants/{participantId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false },
        'participantId' => { 'value' => participant_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      WebRtcBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      case _response.status_code
      when 401
        raise APIException.new(
          'Unauthorized',
          _response
        )
      when 403
        raise APIException.new(
          'Access Denied',
          _response
        )
      when 404
        raise APIException.new(
          'Not Found',
          _response
        )
      end
      unless _response.status_code.between?(200, 208)
        raise ErrorException.new(
          'Unexpected Error',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      ApiResponse.new(
        _response, data: Participant.from_hash(decoded)
      )
    end

    # Delete participant by ID.
    # @param [String] account_id Required parameter: Account ID
    # @param [String] participant_id Required parameter: Example:
    # @return [void] response from the API call
    def delete_participant(account_id,
                           participant_id)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::WEBRTCDEFAULT)
      _query_builder << '/accounts/{accountId}/participants/{participantId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false },
        'participantId' => { 'value' => participant_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = config.http_client.delete(
        _query_url
      )
      WebRtcBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      case _response.status_code
      when 401
        raise APIException.new(
          'Unauthorized',
          _response
        )
      when 403
        raise APIException.new(
          'Access Denied',
          _response
        )
      when 404
        raise APIException.new(
          'Not Found',
          _response
        )
      end
      unless _response.status_code.between?(200, 208)
        raise ErrorException.new(
          'Unexpected Error',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      ApiResponse.new(_response)
    end

    # Create a new session.
    # Sessions are idempotent, so relevant parameters must be set in this
    # function if desired.
    # @param [String] account_id Required parameter: Account ID
    # @param [Session] body Optional parameter: Session parameters
    # @return [Session] response from the API call
    def create_session(account_id,
                       body: nil)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::WEBRTCDEFAULT)
      _query_builder << '/accounts/{accountId}/sessions'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      WebRtcBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      case _response.status_code
      when 400
        raise APIException.new(
          'Bad Request',
          _response
        )
      when 401
        raise APIException.new(
          'Unauthorized',
          _response
        )
      when 403
        raise APIException.new(
          'Access Denied',
          _response
        )
      end
      unless _response.status_code.between?(200, 208)
        raise ErrorException.new(
          'Unexpected Error',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      ApiResponse.new(
        _response, data: Session.from_hash(decoded)
      )
    end

    # Get session by ID.
    # @param [String] account_id Required parameter: Account ID
    # @param [String] session_id Required parameter: Session ID
    # @return [Session] response from the API call
    def get_session(account_id,
                    session_id)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::WEBRTCDEFAULT)
      _query_builder << '/accounts/{accountId}/sessions/{sessionId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false },
        'sessionId' => { 'value' => session_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      WebRtcBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      case _response.status_code
      when 401
        raise APIException.new(
          'Unauthorized',
          _response
        )
      when 403
        raise APIException.new(
          'Access Denied',
          _response
        )
      when 404
        raise APIException.new(
          'Not Found',
          _response
        )
      end
      unless _response.status_code.between?(200, 208)
        raise ErrorException.new(
          'Unexpected Error',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      ApiResponse.new(
        _response, data: Session.from_hash(decoded)
      )
    end

    # Delete session by ID.
    # @param [String] account_id Required parameter: Account ID
    # @param [String] session_id Required parameter: Session ID
    # @return [void] response from the API call
    def delete_session(account_id,
                       session_id)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::WEBRTCDEFAULT)
      _query_builder << '/accounts/{accountId}/sessions/{sessionId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false },
        'sessionId' => { 'value' => session_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = config.http_client.delete(
        _query_url
      )
      WebRtcBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      case _response.status_code
      when 401
        raise APIException.new(
          'Unauthorized',
          _response
        )
      when 403
        raise APIException.new(
          'Access Denied',
          _response
        )
      when 404
        raise APIException.new(
          'Not Found',
          _response
        )
      end
      unless _response.status_code.between?(200, 208)
        raise ErrorException.new(
          'Unexpected Error',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      ApiResponse.new(_response)
    end

    # List participants in a session.
    # @param [String] account_id Required parameter: Account ID
    # @param [String] session_id Required parameter: Session ID
    # @return [List of Participant] response from the API call
    def list_session_participants(account_id,
                                  session_id)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::WEBRTCDEFAULT)
      _query_builder << '/accounts/{accountId}/sessions/{sessionId}/participants'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false },
        'sessionId' => { 'value' => session_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      WebRtcBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      case _response.status_code
      when 401
        raise APIException.new(
          'Unauthorized',
          _response
        )
      when 403
        raise APIException.new(
          'Access Denied',
          _response
        )
      when 404
        raise APIException.new(
          'Not Found',
          _response
        )
      end
      unless _response.status_code.between?(200, 208)
        raise ErrorException.new(
          'Unexpected Error',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      ApiResponse.new(
        _response,
        data: decoded.map { |element| Participant.from_hash(element) }
      )
    end

    # Add a participant to a session.
    # Subscriptions can optionally be provided as part of this call.
    # @param [String] account_id Required parameter: Account ID
    # @param [String] session_id Required parameter: Session ID
    # @param [String] participant_id Required parameter: Participant ID
    # @param [Subscriptions] body Optional parameter: Subscriptions the
    # participant should be created with
    # @return [void] response from the API call
    def add_participant_to_session(account_id,
                                   session_id,
                                   participant_id,
                                   body: nil)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::WEBRTCDEFAULT)
      _query_builder << '/accounts/{accountId}/sessions/{sessionId}/participants/{participantId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false },
        'sessionId' => { 'value' => session_id, 'encode' => false },
        'participantId' => { 'value' => participant_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.put(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      WebRtcBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      case _response.status_code
      when 401
        raise APIException.new(
          'Unauthorized',
          _response
        )
      when 403
        raise APIException.new(
          'Access Denied',
          _response
        )
      when 404
        raise APIException.new(
          'Not Found',
          _response
        )
      end
      unless _response.status_code.between?(200, 208)
        raise ErrorException.new(
          'Unexpected Error',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      ApiResponse.new(_response)
    end

    # Remove a participant from a session.
    # This will automatically remove any subscriptions the participant has
    # associated with this session.
    # @param [String] account_id Required parameter: Account ID
    # @param [String] session_id Required parameter: Session ID
    # @param [String] participant_id Required parameter: Participant ID
    # @return [void] response from the API call
    def remove_participant_from_session(account_id,
                                        session_id,
                                        participant_id)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::WEBRTCDEFAULT)
      _query_builder << '/accounts/{accountId}/sessions/{sessionId}/participants/{participantId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false },
        'sessionId' => { 'value' => session_id, 'encode' => false },
        'participantId' => { 'value' => participant_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = config.http_client.delete(
        _query_url
      )
      WebRtcBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      case _response.status_code
      when 401
        raise APIException.new(
          'Unauthorized',
          _response
        )
      when 403
        raise APIException.new(
          'Access Denied',
          _response
        )
      when 404
        raise APIException.new(
          'Not Found',
          _response
        )
      end
      unless _response.status_code.between?(200, 208)
        raise ErrorException.new(
          'Unexpected Error',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      ApiResponse.new(_response)
    end

    # Get a participant's subscriptions.
    # @param [String] account_id Required parameter: Account ID
    # @param [String] session_id Required parameter: Session ID
    # @param [String] participant_id Required parameter: Participant ID
    # @return [Subscriptions] response from the API call
    def get_participant_subscriptions(account_id,
                                      session_id,
                                      participant_id)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::WEBRTCDEFAULT)
      _query_builder << '/accounts/{accountId}/sessions/{sessionId}/participants/{participantId}/subscriptions'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false },
        'sessionId' => { 'value' => session_id, 'encode' => false },
        'participantId' => { 'value' => participant_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      WebRtcBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      case _response.status_code
      when 401
        raise APIException.new(
          'Unauthorized',
          _response
        )
      when 403
        raise APIException.new(
          'Access Denied',
          _response
        )
      when 404
        raise APIException.new(
          'Not Found',
          _response
        )
      end
      unless _response.status_code.between?(200, 208)
        raise ErrorException.new(
          'Unexpected Error',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      ApiResponse.new(
        _response, data: Subscriptions.from_hash(decoded)
      )
    end

    # Update a participant's subscriptions.
    # This is a full update that will replace the participant's subscriptions.
    # First call `getParticipantSubscriptions` if you need the current
    # subscriptions. Call this function with no `Subscriptions` object to remove
    # all subscriptions.
    # @param [String] account_id Required parameter: Account ID
    # @param [String] session_id Required parameter: Session ID
    # @param [String] participant_id Required parameter: Participant ID
    # @param [Subscriptions] body Optional parameter: Initial state
    # @return [void] response from the API call
    def update_participant_subscriptions(account_id,
                                         session_id,
                                         participant_id,
                                         body: nil)
      # Prepare query url.
      _query_builder = config.get_base_uri(Server::WEBRTCDEFAULT)
      _query_builder << '/accounts/{accountId}/sessions/{sessionId}/participants/{participantId}/subscriptions'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'accountId' => { 'value' => account_id, 'encode' => false },
        'sessionId' => { 'value' => session_id, 'encode' => false },
        'participantId' => { 'value' => participant_id, 'encode' => false }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.put(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      WebRtcBasicAuth.apply(config, _request)
      _response = execute_request(_request)

      # Validate response against endpoint and global error codes.
      case _response.status_code
      when 400
        raise APIException.new(
          'Bad Request',
          _response
        )
      when 401
        raise APIException.new(
          'Unauthorized',
          _response
        )
      when 403
        raise APIException.new(
          'Access Denied',
          _response
        )
      when 404
        raise APIException.new(
          'Not Found',
          _response
        )
      end
      unless _response.status_code.between?(200, 208)
        raise ErrorException.new(
          'Unexpected Error',
          _response
        )
      end
      validate_response(_response)

      # Return appropriate response type.
      ApiResponse.new(_response)
    end
  end
end
end
