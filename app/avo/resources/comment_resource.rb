class CommentResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # add fields here
  field :commentable, as: :belongs_to, polymorphic_as: :commentable, types: [::User, ::Link, ::Lore, ::Timeline]
  field :user, as: :belongs_to
  
  field :body, as: :textarea

end
