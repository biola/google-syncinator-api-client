module GoogleSyncinator
  module APIClient
    module Settings
      def self.included(base)
        base.send :domain, GoogleSyncinatorAPIClient.config.base_url
        base.send :adapter, Weary::Adapter::NetHttpAdvanced
        base.send :use, Weary::Middleware::HMACAuth, [GoogleSyncinatorAPIClient.config.credentials]
      end
    end
  end
end
