# frozen_string_literal: true

class BrandingConfig < ApplicationConfig
  config_name :branding
  attr_config :favicon, :app_name, :dotcom_name, :logo_image, :instance_name
end
