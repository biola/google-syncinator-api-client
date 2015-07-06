GoogleSyncinator API Client [![Build Status](https://travis-ci.org/biola/google-syncinator-api-client.svg?branch=master)](https://travis-ci.org/biola/google-syncinator-api-client)
==================

Installing
----------

Add `gem 'google_syncinator_api_client'` to your `Gemfile` and run `bundle`

Configuration
-------------

```ruby
GoogleSyncinatorAPIClient.configure do |config|
  # Optional:
  # config.scheme = 'http'
  # config.host = 'localhost'
  # config.script_name = nil
  # config.version = 'v1'

  # Required:
  config.access_id = '**************'
  config.secret_key = '*****************************************'
end
```

Usage
-----

### Example Syncinator

```ruby
require 'google_syncinator_api_client'
require 'multi_json'

google_syncinator = GoogleSyncinator::APIClient::Emails.new
```

License
-------

MIT
