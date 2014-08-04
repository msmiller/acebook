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

Voaw::Icons = [
  "sheep",
  "crosshairs",
  "a6m",
  "a26",
  "b17",
  "beaufighter",
  "f4u",
  "f6f",
  "f8f",
  "fw190",
  "he162",
  "hurricane2",
  "il2m3",
  "ju88",
  "ki-100",
  "la7",
  "lancaster",
  "me109",
  "me262",
  "mosquito",
  "p12e",
  "p38",
  "p39",
  "p47",
  "p51",
  "seafury",
  "spitfire",
  "wellington",
  "yak3"
]

require 'versionomy'

Voaw::Version = Versionomy.create(
  :major => 1,
  :minor => 0,
  :tiny => 1,
  #:tiny2 => 0,
  #:release_type => :preview,
  #:preview_version => 3
  )

Voaw::Date = "3.AUG.2014"
