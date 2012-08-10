# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-appnet/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tom Ashworth"]
  gem.email         = ["tom@phuu.net"]
  gem.description   = "Omniauth Stratey for App.net"
  gem.summary       = "Omniauth Stratey for App.net"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-appnet"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Appnet::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_development_dependency "rspec", "~> 2.7"
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
