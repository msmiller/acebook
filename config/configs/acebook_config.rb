# frozen_string_literal: true

class AcebookConfig < ApplicationConfig
  config_name :acebook
  attr_config :read_mode, :allow_signup, :allow_comments, :allow_salutes, :forums_enabled
end
