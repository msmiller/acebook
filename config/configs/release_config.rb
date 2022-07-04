# frozen_string_literal: true

class ReleaseConfig < ApplicationConfig
  config_name :release
  attr_config :major, :minor, :update, :patch, :milestone, :date

  def release_string
    "#{major}.#{minor}.#{update}.#{patch} #{milestone}"
  end
end
