module UserHelper

  def user_icon(user, css_class = nil)
    image_tag "icons/#{user.get_icon}.gif", class: css_class
  end
end
