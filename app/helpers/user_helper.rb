module UserHelper

  def user_icon(user, css_class = nil)
    image_tag user.get_icon, class: css_class
  end
end
