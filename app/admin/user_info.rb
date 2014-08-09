ActiveAdmin.register UserInfo do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :user_id, :handle, :name, :other_handles, :squadron, :city, :state, :country, :message, :year_started, :planes, :aw_cpid, :wb_cpid, :ah_cpid, :aw_country, :wb_country, :ah_country

  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

end
