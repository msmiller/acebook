class UserInfoResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # add fields here
  field :handle, as: :text
  field :name, as: :text
  field :other_handles, as: :text, hide_on: [:index]
  field :squadron, as: :text, hide_on: [:index]
  field :city, as: :text, hide_on: [:index]
  field :state, as: :text, hide_on: [:index]
  field :country, as: :text, hide_on: [:index]
  field :message, as: :text, hide_on: [:index]
  field :aw_cpid, as: :text, hide_on: [:index]
  field :wb_cpid, as: :text, hide_on: [:index]
  field :ah_cpid, as: :text, hide_on: [:index]
  field :aw_country, as: :text, hide_on: [:index]
  field :wb_country, as: :text, hide_on: [:index]
  field :ah_country, as: :text, hide_on: [:index]
end
