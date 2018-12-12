ActiveAdmin.register Studio do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :phone, :area, :station, :information, :lowest_price, :price,
    :business_hours, :room, :url, :address, :sorroundings, :etc, :post_flag
    
form do |f|
    f.inputs do
    f.input :name
    f.input :phone
    f.input :area
    f.input :station
    f.input :information
    f.input :lowest_price
    f.input :price
    f.input :business_hours
    f.input :room
    f.input :url
    f.input :address
    f.input :sorroundings
    f.input :etc
    f.input :post_flag
    end
    f.actions
end
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
