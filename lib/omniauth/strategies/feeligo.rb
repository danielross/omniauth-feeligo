require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Feeligo < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, "feeligo"
      
      option :token_params, {
        :customABC => :valueABCD
      }

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {
        :site => "http://localhost:3000",
        :authorize_url => "/oauth2/authorize",
        :token_url => "/oauth2/token"
      }
      
      # Extend the parameters used by request_phase
      def authorize_params
        super.update({
          # TODO: community_api_user_token goes here
          :community_api_user_token => 'skip'
        })
      end
      
      def auth_token_params
        super.update({
          # TODO: community_api_user_token goes here
          :community_api_user_token => 'skip'
        })
      end

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid do
        Rails.logger.info puts "UID #{raw_info.inspect}"
        raw_info['id']
      end

      info do
        {
          #:name => raw_info['name'],
          :email => raw_info['email']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        Rails.logger.info puts "RAW INFO #{access_token.inspect}"
        @raw_info ||= access_token.get('/api/users/me', :access_token => access_token.token).parsed
        #{:id => 1}
      end
    end
  end
end