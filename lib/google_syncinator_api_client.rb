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
    autoload :People, 'google_syncinator/api_client/people'
    autoload :IDs, 'google_syncinator/api_client/ids'
    autoload :Emails, 'google_syncinator/api_client/emails'
    autoload :Phones, 'google_syncinator/api_client/phones'
    autoload :Photos, 'google_syncinator/api_client/photos'
    autoload :Addresses, 'google_syncinator/api_client/addresses'
    autoload :ChangeSyncs, 'google_syncinator/api_client/change_syncs'
    autoload :Groups, 'google_syncinator/api_client/groups'
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
