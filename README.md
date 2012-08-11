# OmniAuth::Appnet

An OmniAuth Strategy for App.net.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-appnet'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-appnet

## Usage

### Sinatra

```ruby
require 'omniauth'
require 'omniauth-appnet'

use Rack::Session::Cookie
use OmniAuth::Builder do
  provider :appnet, 'YOUR_CLIENT_ID', 'YOUR_CLIENT_SECRET'
end

get '/auth/:provider/callback' do
  # Do something with auth_hash
  redirect to('/')
end

def auth_hash
  request.env['omniauth.auth']
end
```
