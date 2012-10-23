require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Feeligo < OmniAuth::Strategies::OAuth2
      class NoAuthorizationCodeError < StandardError; end

      DEFAULT_SCOPE = 'email'
      
      OAUTH_PROVIDER_URL = 'http://localhost:3000'
      OAUTH_CALLBACK_URL = 'http://localhost:3000/oauth/callback'

      option :client_options, {
        :site => OAUTH_PROVIDER_URL,
        :authorize_url => '/oauth2/authorize'
        :token_url => '/oauth2/access_token'
      }

      def request_phase
        super
      end

      uid { raw_info['id'].to_s }

      info do
        {
#          'nickname' => raw_info['login'],
          'email' => email,
          'name' => raw_info['name'],
#          'image' => raw_info['avatar_url'],
          'urls' => {
            'Website' => raw_info['website'],
            'Feeligo' => raw_info['link'],
          },
        }
      end

       extra do
         {:raw_info => raw_info}
       end

       def raw_info
         access_token.options[:mode] = :query
         @raw_info ||= access_token.get('/user').parsed
       end
  
    end
  end
end