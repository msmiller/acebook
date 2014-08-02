Voaw::Games = {
  "aw" => { 
    :name => "Air Warrior",
    :countries => [ "A-Land", "B-Land", "C-Land" ]
    },
  "wb" => {
    :name => "WarBirds",
    :countries => [ "Red", "Green", "Gold", "Purple" ]
    },
  "ah" => {
    :name => "Aces High",
    :countries => [ "Rooks", "Knights", "Bishops" ]
    }
}

require 'versionomy'

Voaw::Version = Versionomy.create(
  :major => 1,
  :minor => 0,
  :tiny => 0,
  #:tiny2 => 0,
  :release_type => :preview,
  :preview_version => 1
  )

Voaw::Date = "31.JUL.2014"
