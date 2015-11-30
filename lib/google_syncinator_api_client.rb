require 'weary'

module GoogleSyncinatorAPIClient
  require 'google_syncinator_api_client/configuration'

  def self.configure
    yield config
  end

  def self.config
    @config ||= Configuration.new
  end
end

module GoogleSyncinator
  module APIClient
    autoload :Settings, 'google_syncinator/api_client/settings'
    autoload :DeprovisionSchedules, 'google_syncinator/api_client/deprovision_schedules'
    autoload :AliasEmails, 'google_syncinator/api_client/alias_emails'
    autoload :Emails, 'google_syncinator/api_client/emails'
    autoload :PersonEmails, 'google_syncinator/api_client/person_emails'
    autoload :DepartmentEmails, 'google_syncinator/api_client/department_emails'
    autoload :Exclusions, 'google_syncinator/api_client/exclusions'
  end
end

module Weary
  module Middleware
    autoload :HMACAuth, 'weary/middleware/hmac_auth'
  end

  module Adapter
    autoload :NetHttpAdvanced, 'weary/adapters/net_http_advanced'
  end
end
