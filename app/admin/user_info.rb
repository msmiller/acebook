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
  form do |f|
    f.inputs do
      f.input :user

      f.input  :handle
      f.input  :name
      f.input  :other_handles
      f.input  :squadron
      f.input  :city
      f.input  :state
      f.input  :country, :as => :string
      f.input  :message
      f.input  :year_started
      f.input  :planes
      f.input  :aw_cpid
      f.input  :wb_cpid
      f.input  :ah_cpid
      f.input  :aw_country, :as => :string
      f.input  :wb_country, :as => :string
      f.input  :ah_country, :as => :string

      f.actions
    end
  end

end
