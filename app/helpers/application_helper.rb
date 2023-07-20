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

  def divider(label)
    "<div class=\"relative\">
      <div class=\"absolute inset-0 flex items-center\" aria-hidden=\"true\">
        <div class=\"w-full border-t border-gray-300\"></div>
      </div>
      <div class=\"relative flex justify-center\">
        <span class=\"px-4 bg-white text-gray-500 text-lg titlefont shadow-inner border border-gray-300 rounded-full\">#{label}</span>
      </div>
    </div>"
  end
end
