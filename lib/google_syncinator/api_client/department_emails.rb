module GoogleSyncinator
  module APIClient
    class DepartmentEmails < Weary::Client
      include Settings

      get :show, '/department_emails/{id}'

      post :create, '/department_emails' do |resource|
        resource.required :address, :uuids, :first_name, :last_name
        resource.optional :password, :department, :title, :privacy
      end

      put :update, '/department_emails/{id}' do |resource|
        resource.optional :address, :uuids, :password, :first_name, :last_name, :department, :title, :privacy
      end
    end
  end
end
