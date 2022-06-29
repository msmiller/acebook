module ApplicationHelper
  def set_title(page_title)
    content_for :title, page_title.to_s
  end

  def add_http(link)
    if (link =~ /http[s]?:\/\//)
      link
    else
      "http://#{link}"
    end
  end

end
