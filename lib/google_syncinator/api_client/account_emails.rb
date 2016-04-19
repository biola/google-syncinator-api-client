module GoogleSyncinator
  module APIClient
    class AccountEmails < Weary::Client
      include Settings

      get :search, '/account_emails' do |resource|
        resource.required :q
      end

      get :show, '/account_emails/{id}'
    end
  end
end
