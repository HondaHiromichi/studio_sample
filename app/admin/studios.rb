ActiveAdmin.register Studio do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :phone, :area, :station, :information, :lowest_price, :price,
    :business_hours, :room, :url, :address, :sorroundings, :etc, :post_flag, :latitude, :longitude,
    images_attributes: [:id, :studio_id, :sequence, :image_file_name, :image_content_type, :image_file_size, :image, :_destroy],
    features_attributes: [:id, :feature]
    
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
