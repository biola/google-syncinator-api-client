module Weary
  module Adapter
    class NetHttpAdvanced < NetHttp
      class << self
        attr_accessor :timeout
      end

      def self.connect(request)
        connection = socket(request)
        connection.read_timeout = timeout unless timeout.nil?
        response = connection.request prepare(request)
        Rack::Response.new response.body || "", response.code, normalize_response(response.to_hash)
      end
    end
  end
end
