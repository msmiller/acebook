class SocialInfoResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # add fields here

  field :user, as: :belongs_to

  field :homepage_url, as: :text, hide_on: [:index]
  field :facebook_url, as: :text, hide_on: [:index]
  field :twitter_url, as: :text, hide_on: [:index]
  field :myspace_url, as: :text, hide_on: [:index]
  field :googleplus_url, as: :text, hide_on: [:index]
  field :linkedin_url, as: :text, hide_on: [:index]
  field :skype_url, as: :text, hide_on: [:index]
  field :github_url, as: :text, hide_on: [:index]
  field :deviantart_url, as: :text, hide_on: [:index]
  field :flickr_url, as: :text, hide_on: [:index]
  field :instagram_url, as: :text, hide_on: [:index]
  field :pinterest_url, as: :text, hide_on: [:index]
  field :vimeo_url, as: :text, hide_on: [:index]
  field :imdb_url, as: :text, hide_on: [:index]
  field :youtube_url, as: :text, hide_on: [:index]
  field :steam_url, as: :text, hide_on: [:index]
  field :medium_url, as: :text, hide_on: [:index]
  field :tumblr_url, as: :text, hide_on: [:index]
  field :blogger_url, as: :text, hide_on: [:index]
  field :wordpress_url, as: :text, hide_on: [:index]
end
