module ApplicationHelper

  def add_http(link)
    if (link =~ /http[s]?:\/\//)
      link
    else
      "http://#{link}"
    end
  end

end
