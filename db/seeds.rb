# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Timeline.create([

	{ user_id: 1, title: "Battle Of Germany II Scenario : 'A Clear And Present Hate'", body: "This event depicts the most interesting points during the Battle of Germany. In Stage 1, the USAAF is still using P47's for escort duty over Germany - the Luftwaffe has a trickle of jets to use. In Stage 2, the USAAF converts all their P47's over to P51's and the Luftwaffe gets the opportunity to use Me262's in full squadron strength.
	
This is a 12-mission, 2-stage event. Stage 1 is missions 1 through 6; stage 2 is missions 7 through 12.",
		month: 7, year: 1995, game: "aw", kind: "scenario", approved: true },

	{ user_id: 1, title: "Kursk III Scenario : 'Full Metal Depends(tm)'",  body: "The battle for Kursk rages on. As the size of the tank battles on the ground grow, so too do those in the air. This event features full squadron and group strength operations.
	
This is a 12-mission, 2-stage event. Stage 1 is missions 1 through 6; stage 2 is missions 7 through 12.",
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
	
	{ user_id: 1, title: "Solomons II Scenario : 'Hate Is STILL My Copilot'", body: "<b>Battles in the Solomons : 1943</b>
	
This event depicts the turn of the tide in the Battle of the Solomons. The first stage depicts the time period when the US is trying to hang onto their bases on Guadalcanal. The second stage depicts the swing in momentum as the US becomes better able to attack the Japanese forces.
	
This will be a 12-mission, 2-stage event with 6 missions per stage.
		
We are making a rather sharp departure from scenarios of the past with Solomons II. The format is now a \"rolling scenario\" type. That is, each side is given a number of sorties per mission (planes in flight), a pool of replacements planes, and a set of objectives. And that's about it. Each side will have to conduct simultaneous strikes and base defense (for as long as they have planes to do so, of course). The special rules later on will describe how the replacement rules will work.
	
What we're hoping for is a more wide-open flow of battle. Each side will have to decide how many planes they need to CAP their base, how many they need to sweep with, how many to scout, and how many to escort. They will need to decide if they want to go for a big 24-ship bombing raid, or maybe only a little 6-plane sneak attack. Guessing right on what the other side's base CAP will look like obviously makes a huge difference here.", 
		month: 5, year: 1997, game: "wb", kind: "scenario", approved: true },
	
	{ user_id: 1, title: "Solomons Scenario : 'Hate Is My Copilot'", body: "<b>Battles in the Solomons : 1943</b>
	
This event depicts the turn of the tide in the Battle of the Solomons. The US has secured it's bases on Guadalcanal and is starting preparations for attacking up \"The Slot.\" They face feirce opposition from the IJA along the way and find themselves outnumbered, yet on the offensive.
	
This will be a 12-mission, 2-stage event.", 
		month: 2, year: 1997, game: "wb", kind: "scenario", approved: true },
	
	{ user_id: 1, title: "Kiel Scenario : 'Strawberry Dweebs Forever'", body: "<b>Attack on Kiel : 4-5 January, 1944</b>
	
This event depicts a strike into Germany just at the point where the USAAF was starting to establish itself. Odds in the air of fighters are even, so it comes down to pilot skill alone.
	
This is a 4-mission, 1-stage event.", 
		month: 2, year: 1996, game: "wb", kind: "scenario", approved: true },
		
	# ----
	
	{ user_id: 1, title: "Rangoon '42 Scenario : 'The Sum Of All Hate'", body: "A semi-hypothetical scenario of the Japanese attack on Rangoon early in 1942. In this case, a mixed Allied force is defending the city from air attack. The IJA is trying to gain control of the skies and bomb the defenses to enable a coordinated ground-naval assault. This was one of the first encounters between the AVG and IJA where the Japanese started to develop tactics to counter the stronger, faster US fighters. It was also one of the last desperate stands for the British-led forces before falling back to India.
	
In real life, the Allies were facing much older and slower Japanese planes. Since we do not have these available, A6M Zeros and Ju-88's (as Betty bombers) are being used, but in smaller numbers than actually took place relative to the Allied planes. The situation being depicted is that after an initial bloody nose was delivered by the AVG and RAF, the Japanese pulled in stronger air assets (using more modern aircraft) to wipe the skies over Rangoon clean so they could take the city.
	
<i>Commentary: This is still a tough event for both sides. Fighters will meet co-altitude which is good for the IJA, but numbers are much closer which gives the IJA fewer options - the balance of close escort to sweeps is much keener.</i>", 
		month: 11, year: 2004, game: "ah", kind: "scenario", approved: true },

	# ----

	{ user_id: 1, title: "Air Warrior Convention : Dallas", body: "", 
		month: 9, year: 1999, game: "aw", kind: "convention", approved: true },
	
	{ user_id: 1, title: "Air Warrior Convention : Houston", body: "", 
		month: 8, year: 1995, game: "aw", kind: "convention", approved: true },
	
	{ user_id: 1, title: "Air Warrior Convention : Los Angeles", body: "", 
		month: 6, year: 1992, game: "aw", kind: "convention", approved: true },

	# ----

	{ user_id: 1, title: "Air Warrior featured in MacWorld magazine", body: "", 
		month: 10, year: 1987, game: "ah", kind: "news", approved: true }
	
])

Lore.create([

	{ user_id: 1, title: "HAR!", body: "Victory call of Flush Garden 4Q. Called out when a kill is made. Also used in the phrase: 'Har, Maties, bash thar skulls with a belaying pin...'",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "OiNk!", body: "Victory call of Vermin 4Q and Tango Circus 4Q. 'OiNk!' is a reference to the Great Piggles Hunt of 1989.",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "burp", body: "Victory call of Vermin 4Q.",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "4Q", body: "Name of an Air Warrior Squadron founded in 1987. Say it aloud and you'll understand.",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "Blood Dragon", body: "An A/B17 used as a ground-attack gunship.",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "Ackstar", body: "An A/B17 used as a combination ground-attack gunship and escort gunship. The 'Otto' gunners allowed the A/B-17 to wade into enemy fighters and engage multiple targets.",
		game: "wb", kind: "jargon", approved: true },

	{ user_id: 1, title: "Blood Pig", body: "The F/A-26 used as an instrument of torture on an enema field.",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "Yoooooo Hoooooo", body: "TC's announcement on channel one that he was out looking for someone ... or some country.",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "Enema", body: "A foe, term first used by DoKtor GonZo in the old GEnie forums.",
		game: "aw", kind: "jargon", approved: true },

	{ user_id: 1, title: "Vultch", body: "The act of suppressing a field with low-level attacks taken to the most extreme lengths.",
		game: "wb", kind: "jargon", approved: true },

	{ user_id: 1, title: "The B-17 Caravan Bug", body: "Once upon a time, in a game not so far away, you could sign up as a gunner on a B17 and the pilot could get out of the plane. Through the power of AW magic, you would remain in the B17 at your gunner position. The pilot could do this several times, for he was a jolly fellow who thoroughly enjoyed confusing the CRAP out of his enemies. Each new gunner would sit parked merily on the tarmac, with magic intercomms between each subsequent ship. But then, when the pilot felt all was in order, he would climb into his trusty Me109K-4 - for it was truely the fastest ship in the land - and greet his bombers on their special intercomm. The gunners would begin to laugh beyond control for they knew of the sport to come.
	
The pilot would start his engine and the Me109 would start to taxi and build speed. The little fighter would pull straight vertical and climb and climb for in the days of old there was no such thing as gravity or drag. When the pilot looked back, there were the B17's about 400yds off his stern. The gunners were impressed indeed by the way this little fighter could pull so many heavy planes with their engines off. Soon the little Me109 was cruising at 450kts, and so were the B17's. It was a most curios sight indeed, but the amount of firepower was most impressive. The little fighter and his flock would make amazing firing passes on the enemy fields. The shocked enemy pilots could never hit the little Me109 for there were 3 B17's blocking their view. And, since the B17s were magic, they could absorb infinate damage.
	
Just when all seemed most glorious and fun filled, the little Me109 made a sharp turn too close to a brother fighter plane. Lo and behold, one of his B17's was now magically attached to this OTHER fighter. The intercomm still worked to the little Me109, and this new plane had little idea that he now had his own private gunner.
	
These days of magic were shortlived, for the thoroughly evil Lord Kelton put a stop to such things. \"This isn't realistic - it simply won't do\", he bellowed. And so he turned off the magic B17's. But the cheerful pilots were undaunted for they soon began to enjoy the sport of Bloodpigging - but that's a story for another day.",
		game: "aw", kind: "story", approved: true },
		
	{ user_id: 1, title: "First Encounter", body: "by C. H. \"Link\" Laughlin,  an American Volunteer Group pilot

\"My first encounter with the opposition was totally unexplected. One minute I was tooling along after my flight leader attending to my wingman duties - and the next minute my flight leader disappears in some oddball maneuver I've yet to figure out. The neighborhood proliferates Zeros like flies in a garbage dump.\"

\"I sense a problem. My cerebral apparatus goes into high gear and develops a number of short circuits. One set of neurons signals, \"Go RIGHT!\" Another group hollers, \"LEFT ... left ... le ...!\" And still others scream, \"ACTION ... ANYTHING!\" So what happens? I breeze through the swarm with cross controls. The Japanese have never seen a P-40 flying sideways. A helluva tough target to lead. I credit survival to this innovative maneuver heretofore never recommended by the experts.\"
    
<i>(This was posted back when I was running AW scenarios to help capture the mood of the battles we were trying to recreate.)</i>",
		game: "aw", kind: "story", approved: true },

	{ user_id: 1, title: "Attacking A B17 Group Over Sicily", body: "by Johannes Steinhoff,  \"Messershmitts Over Sicily\"

\"... Electrified, I looked down at the grey sea below. And then I saw them too: the surface had suddenly become speckled with a curious pattern of light brown smudges. With their upper parts painted desert yellow the Flying Fortresses stood out clearly against the silver grey of the sea They were flying very low and fast, racing over the waves almost wing tip to wing tip. ...\"

\"6000 feet. The Messerschmitt 109's speed had built up tremendously. The more height I lost, the faster the bombers seemed to be moving. Straden, Bachmann and Bernhard followed me down, keeping correct station. 3000 feet!\"

\"Suddenly a gap appeared between the enemy squadrons. I had to get low enough to be at the same height as the bombers when I met them. The rolling waves were now a few feet below me and the extended line of huge aircraft was appraoching at an incredible speed. I fixed my gaze through the front windscreen, keeping the illuminated reflector sight on the aircraft at the centre of the formation. 'You have to aim at the Fortress's glass cockpit...' Exactly when I opened fire I do not know - the moment to do so must have been conveyed automatically to my thumb on the stick. In that last brief phase of the attack it was all suddenly like the sequence of a familiar exercise. I pulled my Messerschmitt up to the same height as the bombers as though I had done it a hundred times before. My task was to spray the gleaming cockpit with a hail of shot. In a curving trajectory the incendiary tracer streaked away from the machine towards the giant bomber, crossing the blue smears of smoke tracer. The luminous cross-wires of my sights shook to the 'pop-pop-pop' of the cannons. The flashing panels of glass were plainly visible, and then I had to wrench the machine upwards, the 'g' force pressing me hard down into my seat. The impetus from the burst of speed took me high above the bombers. My mouth felt as though it had dried up and my saliva tasted bitter. The cockpit was full of the smell of cordite. As I banked I noticed that I was on my own; ...\"
    
<i>(This was posted back when I was running AW scenarios to help capture the mood of the battles we were trying to recreate.)</i>",
		game: "aw", kind: "story", approved: true }
		
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









