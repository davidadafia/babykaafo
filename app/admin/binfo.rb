ActiveAdmin.register Binfo do

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
    column '' do |binfo|
      link_to 'VIEW', admin_binfo_path(binfo) if authorized? :update, binfo
    end
  end
end
 