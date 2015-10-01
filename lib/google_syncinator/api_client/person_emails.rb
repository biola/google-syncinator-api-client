module GoogleSyncinator
  module APIClient
    class PersonEmails < Weary::Client
      include Settings

      get :show, '/person_emails/{id}'

      post :create, '/person_emails' do |resource|
        resource.required :uuid, :address
        resource.optional :primary
      end
    end
  end
end
