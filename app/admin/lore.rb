ActiveAdmin.register Lore do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :user_id, :title, :body, :approved, :game, :kind
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
    f.input :user_id
    f.input :title
    f.input :body
    f.input :game, as: :select, collection: Voaw::Games.keys
    f.input :kind, as: :select, collection: Lore::KINDS.keys # collect { |x| x[0] }
    f.input :approved
    #f.input :gallery_id, as: :select, collection: Gallery.select(:name).uniq
    #f.input :file
  end
end

end
