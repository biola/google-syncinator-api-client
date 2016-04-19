module GoogleSyncinator
  module APIClient
    class PersonEmails < Weary::Client
      include Settings

      get :show, '/person_emails/{id}'

      post :create, '/person_emails' do |resource|
        resource.required :uuid, :address
      end

      put :update, '/person_emails/{id}' do |resource|
        resource.required :address
      end
    end
  end
end
