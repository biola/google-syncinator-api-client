module GoogleSyncinator
  module APIClient
    class Emails < Weary::Client
      include Settings

      put :update, '/people/{uuid}/emails/{email_id}' do |resource|
        resource.required :old_address, :new_address
      end
    end
  end
end
