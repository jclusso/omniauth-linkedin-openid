# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-linkedin-openid/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = 'Jarrett Lusso'
  gem.email         = 'jclusso@gmail.com'
  gem.description   = 'OmniAuth strategy for LinkedIn using OpenID.'
  gem.summary       = 'OmniAuth strategy for LinkedIn using OpenID.'
  gem.homepage      = 'https://github.com/jclusso/omniauth-linkedin-openid'
  gem.license       = 'MIT'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'omniauth-linkedin-openid'
  gem.require_paths = ['lib']
  gem.version       = OmniAuth::LinkedInOpenID::VERSION

  gem.metadata = {
    "bug_tracker_uri" => "https://github.com/jclusso/omniauth-linkedin-openid/issues",
    "documentation_uri" => "https://github.com/jclusso/omniauth-linkedin-openid/README.md",
    "source_code_uri" => "https://github.com/jclusso/omniauth-linkedin-openid"
  }

  gem.add_dependency 'omniauth', '~> 2.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.8'
  gem.add_development_dependency 'rspec', '~> 3.5'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'webmock'
end
