# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 7.0.2'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem 'jsbundling-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
gem 'kredis'

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem 'bcrypt', '~> 3.1.7'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
gem 'cssbundling-rails' # https://github.com/rails/cssbundling-rails
gem 'sassc-rails'

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'image_processing', '~> 1.2'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem 'rack-mini-profiler'

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem 'spring'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

######## APPLICATION GEMS ########

# CORE
gem 'aasm'
gem 'acts-as-taggable-on', '~> 9.0'
gem 'anyway_config', '~> 2.0' # https://github.com/palkan/anyway_config
### gem 'better_settings'
### gem 'default_value_for', github: 'FooBarWidget/default_value_for', ref: "refs/pull/91/head"
gem 'attr_default'
gem 'friendly_id'
gem 'hiredis'
### gem 'redis-session-store'
gem 'interactor' # https://github.com/collectiveidea/interactor
gem 'interactor-rails'
gem 'pagy'
gem 'rolify'
gem 'blueprinter'
### gem "audited", "~> 5.0"
### gem 'passwordless' # https://github.com/mikker/passwordless
### gem 'addressable' # https://github.com/sporkmonger/addressable
### gem 'after_commit_everywhere'
### gem 'paper_trail'
### gem 'paranoia'
### gem 'ranked-model'
gem 'devise'
### gem 'devise-passwordless' # https://github.com/abevoelker/devise-passwordless
### gem 'noticed'
gem 'ice_cube'

# CORE/DB
### gem 'pg_search'
### gem 'scenic'
### gem 'hiredis'

# CORE UI/COMPONENTS
gem 'lookbook' # https://github.com/allmarkedup/lookbook
gem 'papercraft'
gem 'view_component'

# FLIPPER
gem 'flipper'
gem 'flipper-redis'
gem 'flipper-ui'

# UI
gem 'active_link_to'
gem 'css-class-string'
gem 'flutie' # https://github.com/thoughtbot/flutie
gem 'heroicon'
gem 'title'

# UTIL
gem 'better_errors'
gem 'finishing_moves'
gem 'high_voltage'
gem 'seedbank'
### gem 'favicon_maker'
gem 'acts_as_list'
gem 'auto_html'
gem 'boolean'
gem 'classy_hash'
gem 'hash_dot'
gem 'has_scope' # https://github.com/heartcombo/has_scope
gem 'namae'
gem 'redcarpet'
# gem "rchardet"
# gem 'sitemap_generator'

# ADMIN / TOOLING
gem 'avo'

group :development do
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
end

group :development, :test do
  gem 'amazing_print'
  gem 'database_cleaner-active_record'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry-byebug'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'standard'
  ### gem 'strong_migrations'
end

gem 'dotenv-rails', groups: [:development, :test]

group :test do
  gem 'fakeredis', require: 'fakeredis/rspec'
end