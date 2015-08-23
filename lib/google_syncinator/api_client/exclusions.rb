module GoogleSyncinator
  module APIClient
    class Exclusions < Weary::Client
      include Settings

      post :create, '/emails/{email_id}/exclusions' do |resource|
        resource.required :creator_uuid, :starts_at
        resource.optional :ends_at, :reason
      end

      delete :destroy, '/emails/{email_id}/exclusions/{id}'
    end
  end
end
