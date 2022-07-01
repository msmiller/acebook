module UserHelper

  def user_icon(user, css_class = nil)
    image_tag "/assets/icons/#{user.get_icon}.gif", class: css_class
  end
end
