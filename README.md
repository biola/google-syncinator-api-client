GoogleSyncinator API Client [![Build Status](https://travis-ci.org/biola/google-syncinator-api-client.svg?branch=master)](https://travis-ci.org/biola/google-syncinator-api-client)
==================

Google Syncinator API Client is a client to the [google-syncinator](https://github.com/biola/google-syncinator) API (duh!)

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

Getting Credentials
-------------------

To create a google-syncinator client and get an `access_id` and `secret_key`, see the [google-syncinator README](https://github.com/biola/google-syncinator/blob/master/README.md).

Usage
-----

### Example Syncinator

```ruby
require 'google_syncinator_api_client'
require 'multi_json'

emails_api = GoogleSyncinator::APIClient::Emails.new
emails = emails_api.index.perform.parse
emails_api.show(id: emails.first['id']).perform.parse

person_emails_api = GoogleSyncinator::APIClient::PersonEmails.new
person_email = person_emails_api.create(uuid: 'TROGDIR_PERSON_UUID', address: 'test@example.com').perform.parse
person_emails_api.show(id: person_email['id']).perform

alias_emails_api = GoogleSyncinator::APIClient::AliasEmails.new
alias_email = alias_emails_api.create(account_email_id: person_email['id'], address: 'test@example.com').perform.parse
alias_emails_api.show(id: alias_email['id']).perform

deprovision_schedules_api = GoogleSyncinator::APIClient::DeprovisionSchedules.new
deprovision_schedule = deprovision_schedules_api.create(email_id: person_email['id'], action: :suspend, scheduled_for: Time.now).perform.parse
deprovision_schedules_api.update(email_id: person_email['id'], id: deprovision_schedule['id'], canceled: true).perform
deprovision_schedules_api.destroy(email_id: person_email['id'], id: deprovision_schedule['id']).perform

exclusions_api = GoogleSyncinator::APIClient::Exclusions.new
exclusion_api = exclusions_api.create(email_id: person_email['id'], creator_uuid: 'TROGDIR_PERSON_UUID', starts_at: Time.now).perform.parse
exclusions_api.destroy(email_id: person_email['id'], id: exclusion_api['id']).perform
```

License
-------
[MIT](https://github.com/biola/google-syncinator-api-client/blob/master/MIT-LICENSE)
