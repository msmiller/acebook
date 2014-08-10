module ApplicationHelper

  def add_http(link)
    if (link =~ /http[s]?:\/\//)
      link
    else
      "http://#{link}"
    end
  end

  def title(page_title)
    content_for :title, page_title.to_s
  end

end
