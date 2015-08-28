module GoogleSyncinator
  module APIClient
    class DeprovisionSchedules < Weary::Client
      include Settings

      post :create, '/emails/{email_id}/deprovision_schedules' do |resource|
        resource.required :action, :scheduled_for
        resource.optional :reason
      end

      put :update, '/emails/{email_id}/deprovision_schedules/{id}' do |resource|
        # There shouldn't be any reason to update a deprovision schedule other
        #   than to cancel it
        resource.required :canceled
      end

      delete :destroy, '/emails/{email_id}/deprovision_schedules/{id}'
    end
  end
end
