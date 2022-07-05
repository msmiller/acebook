# frozen_string_literal: true

class ReleaseConfig < ApplicationConfig
  config_name :release
  attr_config :major, :minor, :update, :patch, :milestone, :date

  def release_string
    "#{major}.#{minor}.#{update}.#{patch} #{milestone}"
  end

  def self.version_string
    "Acebook v#{major}.#{minor}.#{update}.#{patch} #{milestone} @ #{date}"
  end
end
