ActiveAdmin.register Dvideo do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	
 permit_params :title, :body
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	index do
    column :id
    column :title
    column :created_at
    column '' do |dvideo|
      link_to 'VIEW', admin_dvideo_path(dvideo) if authorized? :update, dvideo
    end
  end
end
 