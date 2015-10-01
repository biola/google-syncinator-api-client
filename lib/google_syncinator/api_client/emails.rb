module GoogleSyncinator
  module APIClient
    class Emails < Weary::Client
      include Settings

      get :index, '/emails' do |resource|
        resource.optional :q, :page, :per_page, :offset
      end

      get :show, '/emails/{id}'
    end
  end
end
