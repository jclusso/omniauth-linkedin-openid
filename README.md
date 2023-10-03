# OmniAuth LinkedIn

![Ruby](https://github.com/jclusso/omniauth-linkedin-openid/workflows/Ruby/badge.svg?branch=master)
[![Gem](https://img.shields.io/gem/v/omniauth-linkedin-openid)](https://rubygems.org/gems/omniauth-linkedin-openid)

This is the a OmniAuth strategy for authenticating to LinkedIn using OpenID. To
use it, you'll need to register an application on the
[LinkedIn Apps Page](https://www.linkedin.com/developers/apps) to get your
Client ID and Client Secret. Additionally, you'll need to request access to the
"Sign In with LinkedIn using OpenID Connect" product.

For more details, read the [Sign In with LinkedIn using OpenID Connect](https://learn.microsoft.com/en-us/linkedin/consumer/integrations/self-serve/sign-in-with-linkedin-v2) documentation.

## Installation

```ruby
gem 'omniauth-linkedin-openid'
```

## Usage

```ruby
use OmniAuth::Builder do
  provider :linkedin,
    client_id: ENV['LINKEDIN_CLIENT_ID'],
    client_secret: ENV['LINKEDIN_CLIENT_SECRET']
end
```

## Authenticating Members

With the LinkedIn API, you have the ability to specify which permissions you want users to grant your application. For more details, read the LinkedIn [Authenticating Members](https://learn.microsoft.com/en-us/linkedin/consumer/integrations/self-serve/sign-in-with-linkedin-v2#authenticating-members) documentation.

The following scopes are requested by default:

'openid profile email'

Here is an example of how you can configure the `scope` option:

```ruby
provider :linkedin,
  client_id: ENV['LINKEDIN_CLIENT_ID'],
  client_secret: ENV['LINKEDIN_CLIENT_SECRET'],
  scope: 'openid profile email'
```

## Profile Fields

When specifying which permissions you want users to grant to your application, you can also specify the array of fields that you want returned in the OmniAuth hash. The following fields are requested by default:

```ruby
%w(id full-name first-name last-name picture-url email-address)
```

Here is an example of how you can configure the `fields` option:

```ruby
provider :linkedin,
  client_id: ENV['LINKEDIN_CLIENT_ID'],
  client_secret: ENV['LINKEDIN_CLIENT_SECRET'],
  fields: %w(id full-name email-address)
```

To see a complete list of available fields, read the LinkedIn [Profile Fields](https://learn.microsoft.com/en-us/linkedin/shared/references/fields) documentation.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jclusso/omniauth-linkedin-openid.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Credits

Thanks to [@decioferreira](https://github.com/decioferreira) for making [omniauth-linkedin-oauth2](https://github.com/decioferreira/omniauth-linkedin-oauth2) which this was based on.
