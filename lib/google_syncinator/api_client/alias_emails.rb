module GoogleSyncinator
  module APIClient
    class AliasEmails < Weary::Client
      include Settings

      get :show, '/alias_emails/{id}'

      post :create, '/alias_emails' do |resource|
        resource.required :account_email_id, :address
      end
    end
  end
end
