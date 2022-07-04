class Konfig < BetterSettings
  source "#{ Rails.root }/config/konfig/settings.yml", namespace: Rails.env
  source "#{ Rails.root }/config/konfig/release.yml", namespace: Rails.env
  source "#{ Rails.root }/config/konfig/defines.yml", namespace: Rails.env

  def self.version
    "#{release.major}.#{release.minor}.#{release.update}.#{release.patch}"
  end

  def self.version_string
    "Acebook v#{release.major}.#{release.minor}.#{release.update}.#{release.patch} #{release.milestone} @ #{release.date}"
  end

end
