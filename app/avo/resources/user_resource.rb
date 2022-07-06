class UserResource < Avo::BaseResource
  self.title = :email
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # add fields here
  field :email, as: :text
  field :role, as: :select, options: { 'none': nil, 'admin': 'admin' }

  field :rip, as: :boolean, hide_on: [:index]
  field :forum_admin, as: :boolean, hide_on: [:index]
  field :forum_mod, as: :boolean, hide_on: [:index]
  field :forum_name, as: :text, hide_on: [:index]
  field :confirmed_at, as: :date, hide_on: [:index]
  field :last_sign_in_at, as: :date, hide_on: [:index, :edit]

  field :user_info, as: :has_one
  field :social_info, as: :has_one

end
