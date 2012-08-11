# Omniauth::Appnet

TODO: Write a gem description

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
```
