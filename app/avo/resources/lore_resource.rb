class LoreResource < Avo::BaseResource
  self.title = :title
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # add fields here
  field :user, as: :belongs_to, hide_on: [:index]

  field :title, as: :text
  field :game, as: :select, options: { 'aw': 'aw', 'ah': 'ah', 'wb': 'wb' }
  field :kind, as: :select, options: { 'jargon': 'jargon', 'story': 'story' }
  field :body, as: :textarea, hide_on: [:index]
  field :approved, as: :boolean

end
