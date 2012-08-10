require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Appnet < OmniAuth::Strategies::OAuth2

      option :name, 'buffer'

      option :client_options, {
        :site => 'https://alpha-api.app.net',
        :authorize_url => 'https://alpha.app.net/oauth/authenticate',
        :token_url => 'https://alpha.app.net/oauth/access_token'
      }

      uid { raw_info['id'] }

      extra do
        {:raw_info => raw_info}
      end

      def raw_info
        @raw_info ||= access_token.get('stream/0/users/me').parsed
      end

    end
  end
end