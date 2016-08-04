module GoogleSyncinator
  module APIClient
    class Emails < Weary::Client
      include Settings

      get :index, '/emails' do |resource|
        resource.optional :q, :state, :pending, :_type, :vfe, :page, :per_page, :offset
      end

      get :show, '/emails/{id}'
    end
  end
end
