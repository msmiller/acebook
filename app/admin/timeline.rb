ActiveAdmin.register Timeline do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :user_id, :month, :year, :title, :body, :approved, :game, :kind
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
      f.input :month, as: :select, collection: Date::MONTHNAMES.each_with_index.collect{|m, i| [m, i]}
      f.input :year, as: :select, collection: (1985..2015).to_a
      f.input :title
      f.input :body
      f.input :game, as: :select, collection: Voaw::Games.keys
      f.input :kind, as: :select, collection: Timeline::KINDS.keys # collect { |x| x[0] }
      f.input :approved

      f.actions
    end
  end


end
