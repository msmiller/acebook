# THESE ARE FOR THE SHIFT TO THE RAILS5 VERSION

# Scripts will be needed to change some fields names on the current scehme
# Also will need to convert squadrons => guild_id
#
# game:string => game_code:string
# plane:string => equipment_code:string
# country:string => team_code:string # countries
# squadron:string => guild_id:integer

rails g scaffold Link \
  user:references:index title:string description:string url:string approved:boolean

# use SettingsLogic for games, icons, countries, and equipment

# game:string => game_code:string
rails g scaffold Timeline \
    user:references:index month:integer year:integer\
    title:string body:text approved:boolean game_code:string kind:string

# game:string => game_code:string
rails g scaffold Lore \
  user:references:index \
  title:string body:text approved:boolean game_code:string kind:string

# The handle and guild for a game over-rides the user's primary
rails g model GameInfo
  user:references:index \
  played:boolean game_code:string handle:string cpid:string team_code:string guild:references:index

rails g mode SocialInfo \
  user:references:index \
  homepage_url:string facebook_url:string twitter_url:string myspace_url:string \
  googleplus_url:string linkedin_url:string skype_url:string github_url:string \
  deviantart_url:string flickr_url:string instagram_url:string pinterest_url:string \
  vimeo_url:string imdb_url:string youtube_url:string steam_url:string medium_url:string \
  tumblr_url:string blogger_url:string wordpress_url:string gab_url:string minds_url:string

# Has an avatar
rails g scaffold Guild name:string year_formed:integer

# Guild is the primary, this can be over-ridden per-game
# game_info is serialized hash of game => { cpid, handle }
rails g model UserInfo \
  user:references:index \
handle:string
name:string
other_handles:string
guild:references:index
city:string
state:string
country:string
message:text
equipment:string
year_started:integer
icon:string
game_info:text

