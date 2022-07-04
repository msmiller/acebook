Rails.application.routes.draw do

  authenticate :user, -> user { user.is_admin? } do
    mount Avo::Engine, at: Avo.configuration.root_path
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end

  if AcebookConfig.forums_enabled
    mount Thredded::Engine => '/forum'
  end

  devise_for :users

  # get 'pages/about' => 'high_voltage/pages#show', id: 'about'
  get "/pages/*id" => 'pages#show', as: :page, format: false

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'voaw#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'profile' => 'voaw#profile'
  post 'profile' => 'voaw#profile'
  get 'show/:id' => 'voaw#show'

  get 'stats' => 'voaw#stats'
  get 'list' => 'voaw#list'
  get 'index' => 'voaw#index'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :timelines
  get 'timeline' => 'timelines#index'
  resources :lores
  get 'lore' => 'lores#index'
  resources :links
  get 'links' => 'links#index'
  resources :comments

end
