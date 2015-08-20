module GoogleSyncinator
  module APIClient
    class Emails < Weary::Client
      include Settings

      get :index, '/emails' do |resource|
        resource.optional :q, :page, :per_page, :offset
      end

      get :show, '/emails/{id}'

      post :create, '/emails' do |resource|
        resource.required :uuid, :address
        resource.optional :primary
      end

      put :update, '/emails/{id}' do |resource|
        resource.required :primary
      end
    end
  end
end
