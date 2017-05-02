module GoogleSyncinator
  module APIClient
    class PersonEmails < Weary::Client
      include Settings

      get :show, '/person_emails/{id}'

      post :create, '/person_emails' do |resource|
        resource.required :uuid, :address
        resource.optional :primary
      end

      put :update, '/person_emails/{id}' do |resource|
        resource.optional :address, :uuid, :first_name, :last_name, :vfe,
                          :password, :privacy
      end
    end
  end
end
