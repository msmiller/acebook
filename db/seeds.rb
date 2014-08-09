# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Timeline.create([

	{ user_id: 1, title: "Battle Of Germany II Scenario : 'A Clear And Present Hate'", body: "",
		month: 7, year: 1995, game: "aw", kind: "scenario", approved: true },

	{ user_id: 1, title: "Kursk III Scenario : 'Full Metal Depends(tm)'",  body: "",
		month: 5, year: 1995, game: "aw", kind: "scenario", approved: true },

	{ user_id: 1, title: "Munda Weekend Scenario : '30 Seconds Over Toilet Bowl'",  body: "",
		month: 2, year: 1995, game: "aw", kind: "scenario", approved: true },

	{ user_id: 1, title: "Eagle Day II Scenario : 'A Hard Day's Hate'",  body: "",
		month: 11, year: 1994, game: "aw", kind: "scenario", approved: true },

	{ user_id: 1, title: "Sicily '43 Scenario : 'Hate Is A Many Splendored Thing'",  body: "",
		month: 8, year: 1994, game: "aw", kind: "scenario", approved: true },

	{ user_id: 1, title: "Imphal Plain Scenario : 'Bridge On The River Bile'",  body: "",
		month: 3, year: 1994, game: "aw", kind: "scenario", approved: true },

	{ user_id: 1, title: "Battle Of Germany Scenario : 'Anticip-hate-tion'",  body: "",
		month: 1, year: 1994, game: "aw", kind: "scenario", approved: true },

	{ user_id: 1, title: "Munda Scenario : 'The Silence Of The Sheep'",  body: "",
		month: 11, year: 1993, game: "aw", kind: "scenario", approved: true },

	{ user_id: 1, title: "Eagle Day Scenario : 'A Fistful Of Hate'",  body: "",
		month: 9, year: 1993, game: "aw", kind: "scenario", approved: true },

	{ user_id: 1, title: "Kursk II Scenario : 'The Stench Of Fear'",  body: "",
		month: 7, year: 1993, game: "aw", kind: "scenario", approved: true },
	
	{ user_id: 1, title: "Indian Ocean Scenario",  body: "",
		month: 7, year: 1992, game: "aw", kind: "scenario", approved: true },
	
	{ user_id: 1, title: "Fortress Rabaul Scenario",  body: "",
		month: 5, year: 1992, game: "aw", kind: "scenario", approved: true },
	
	{ user_id: 1, title: "Kursk Scenario",  body: "First Air Warrior Event",
		month: 4, year: 1992, game: "aw", kind: "scenario", approved: true },

	# ----
	
	{ user_id: 1, title: "Solomons II Scenario : 'Hate Is STILL My Copilot'", 
		month: 5, year: 1997, game: "aw", kind: "scenario", approved: true },
	
	{ user_id: 1, title: "Solomons Scenario : 'Hate Is My Copilot'", 
		month: 2, year: 1997, game: "wb", kind: "scenario", approved: true },
	
	{ user_id: 1, title: "Kiel Scenario : 'Strawberry Dweebs Forever'", 
		month: 2, year: 1996, game: "wb", kind: "scenario", approved: true },
		
	# ----
	
	{ user_id: 1, title: "Rangoon '42 Scenario : 'The Sum Of All Hate'", 
		month: 11, year: 2004, game: "ah", kind: "scenario", approved: true },

	# ----

	{ user_id: 1, title: "Air Warrior Convention : Dallas", body: "", 
		month: 9, year: 1999, game: "aw", kind: "convention", approved: true },
	
	{ user_id: 1, title: "Air Warrior Convention : Houston", body: "", 
		month: 8, year: 1995, game: "aw", kind: "convention", approved: true },
	
	{ user_id: 1, title: "Air Warrior Convention : Los Angeles", body: "", 
		month: 7, year: 1992, game: "aw", kind: "convention", approved: true },

	# ----

	{ user_id: 1, title: "Air Warrior featured in MacWorld magazine", body: "", 
		month: 10, year: 1987, game: "ah", kind: "news", approved: true }
	
])

Lore.create([

	{ user_id: 1, title: "HAR!", body: "Called out when a kill is made. Also used in the phrase: 'Har, Maties, bash thar skulls with a belaying pin...'",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "OiNk!", body: "Also called when a kill is made. 'OiNk!' is a reference to the Great Piggles Hunt of 1989.",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "burp", body: "Also called when a kill is made ... usually by Vermin.",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "4Q", body: "Say it aloud and you'll understand.",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "Blood Dragon", body: "An A/B17 used as a ground-attack gunship.",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "Blood Pig", body: "The F/A-26 used as an instrument of torture on an enema field.",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "Yoooooo Hoooooo", body: "TC's announcement on channel one that he was out looking for someone ... or some country.",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "Enema", body: "A foe.",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "Vultch", body: "The act of suppressing a field with low-level attacks taken to the most extreme lengths.",
		game: "aw", kind: "jargon", approved: true }

])

=begin
AW Scenarios
============
  July/95 Battle Of Germany II
     "A Clear And Present Hate"
  May/95  Kursk III
    "Full Metal Depends(tm)"
  Feb/95  Munda Weekend
    "30 Seconds Over Toilet Bowl"
  Nov/94  Eagle Day II
    "A Hard Day's Hate"
  Aug/94  Sicily '43
    "Hate Is A Many Splendored Thing"
    
  Mar/94  Imphal Plain
     "Bridge On The River Bile"
  Jan/94  Battle Of Germany
    "Anticip-hate-tion"
  Nov/93  Munda
    "The Silence Of The Sheep"
  Sep/93  Eagle Day
    "A Fistful Of Hate"
  Jul/93  Kursk II
     "The Stench Of Fear"
  Jul/92  Indian Ocean
  May/92  Fortress Rabaul
  Apr/92  Kursk

WarBirds Scenarios
  SOLOMONS II  May 1997
    "Hate Is STILL My Copilot"
  SOLOMONS (aborted)    February 97
    "Hate Is My Copilot"
  KIEL    February 96
    "Strawberry Dweebs Forever"

Aces High Scenarios
  Rangoon '42 - Nov/2004
  "The Sum Of All Hate"

Conventions
  Air Warrior - Houston - August, 1995
  Air Warrior - Los Angeles - July 1992
  Air Warrior - Fallas - September, 1999

News
  Oct/87 - Air Warrior featured in MacWorld magazine


LINGO
=====
"HAR!"  Called out when a kill is made. Also used in the phrase: "Har, Maties, bash thar skulls with a belaying pin..."
"OiNk!" Also called when a kill is made. "OiNk!" is a reference to the Great Piggles Hunt of 1989.
"burp"  Also called when a kill is made ... usually by Vermin.
"4Q"  Say it aloud and you'll understand.
"Blood Dragon"  An A/B17 used as a ground-attack gunship.
"Blood Pig" The F/A-26 used as an instrument of torture on an enema field.
"Yoooooo Hoooooo" TC's announcement on channel one that he was out looking for someone ... or some country.
"Enema" A foe.

=end









