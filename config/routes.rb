Rails.application.routes.draw do
  resources :editions
  resources :articles
  resources :newsletters
  devise_for :users
  get 'home/index'
  get 'home/foo'
  get 'home/front'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  resources :sections
  resources :instances do
    get 'sections', to: 'instances#sections', as: 'sections'
    get 'add_section', to: 'instances#add_section', as: 'add_section'
  end

  if Rails.env.development?
    mount Lookbook::Engine, at: "/lookbook"
  end

#  authenticate :user, lambda { |u| u.root? } do
#    mount Sidekiq::Web => '/sidekiq'
#    # mount RedisBrowser::Web => '/redis-browser'
#    mount Avo::Engine, at: Avo.configuration.root_path
    mount Flipper::UI.app(Flipper) => '/flipper'
#
#    get 'switch_user', to: 'switch_user#set_current_user'
#    get 'switch_user/remember_user', to: 'switch_user#remember_user'
#  end

end
