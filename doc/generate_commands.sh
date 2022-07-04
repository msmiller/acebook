User # via Devise ... add slug
# Also see: https://github.com/abevoelker/devise-passwordless
# ... or https://github.com/mikker/passwordless

# Subscribers can be tagged into groups by the Newsletter owner
rails g scaffold Subscriber email:string name:string user:references:index

rails g model SubscriberDevice

rails g scaffold Subscription presence:reference:index user:reference:index
# Signs a Subscriber up to a Newsletter
rails g scaffold Signup presence:references:index subscriber:references:index settings:json

# can_create also means can_destroy, can_publish also means can_unpublish
rails g scaffold Collaborator user:reference instance:reference section:reference can_edit:boolean can_publish:boolean can_create:boolean

# media_md_xfered is how many megabytes of media were pulled down to view content
rails g scaffold Usage user:reference instance:reference usage_date:date num_email_sends:integer num_api_calls:integer media_mb_xfered:float mail_agents_run:integer

# user and target are optional so that there can be "system" themes which can be applied
rails g scaffold Theme user:reference target:reference{polymorphic}:index name:string settings:json

# A user creating a custom front end would have a key for themselves and one for their instance
# :target is either an Instance or the User itself
# The defacto reader would have pre-determined api keys for user and instance
rails g scaffold ApiKey user:references target:references{polymorphic}:index api_type:string:index token:string expiration:datetime suspended_until:datetime

# Icon representation - if someone wants a custom icon that will be ActiveStorage and gliff_id will be nil
# THIS MAY BE OVERKILL?!?!?!
rails g scaffold Gliff iconlib:integer key:string color:string


rails g scaffold Fragment article:references instance:references user:references

# Models to support different fragment types

rails g scaffold Form group:references:index post:references:index title:string description:text allow_multiple:boolean allow_edit:boolean
rails g scaffold FormQuestion form:references:index label:string kind:string position:integer configs:text
# FormQuestion.configs includes list of posible answers, css, etc. - will vary with FormQuestion.kind
rails g scaffold FormReply form:references:index user:references:index response:text
# Response is a serialized hash of the form input

rails g model TokenBank user:references:index balance:integer auto_refill_on:integer
rails g model BankTransaction user:references:index kind:string description:string error:string status:string



################################ DONE ################################

rails g scaffold Instance user:references name:string slug:string:index subdomain:string:index description:text is_public:boolean is_monetized:boolean render_as:string settings:json has_sections:boolean in_nexus:boolean show_ads:boolean
rails g scaffold Section instance:references name:string slug:string:index description:text is_public:boolean position:integer settings:json icon_key:string icon_color:string allow_comments:boolean

# tag_lists is { users: [ x, y, z ], articles: [ a, b, c] } - used to limit which posts and/or users get mailed => NO: just tag the newsletter on the scopes
# next_run_at will be the top of the hour, this will get matched against an ActiveJob which also runs at the top of the hour
# autosend means it will send at the scheduled time, if disabled it'll email the owner to manually submit the job
# actiontext: prelude, finale
rails g scaffold Newsletter user:references:index instance:references:index name:string slug:string:index subject:string recurrence:json starts_on:date ends_on:date next_run_at:datetime last_run_at:datetime is_active:boolean autosend:boolean aasm_state:string:index

# User == Author
# was_mailed drives off of NewsletterArticle and MailSend all through NewsletterArticles
# is_static is for API organization for static pages so they can be linked into a menu - statics aren't put in newsletters
rails g scaffold Article instance:references:index user:references:index section:references:index name:string slug:string excerpt:text \
  excerpt_format:string aasm_state:string:index is_public:boolean is_monetized:boolean publish_at:datetime published_at:datetime \
  is_pinned:boolean was_mailed:boolean is_static:boolean

# submitted_at matches the hour-boundary times used by the scheduler
# num_confirmed and num_opened are based on SG WebHooks
# send_time is the matched time it was enqueued from
# num_viewed is number viewed in reader - how many times was viewer opened to this edition ... later we can drill down into which users
rails g model Edition instance:references:index newsletter:references:index settings:json send_time:datetime submitted_at:datetime started_at:datetime finished_at:datetime num_processed:integer num_sent:integer num_confirmed:integer num_opened:integer num_viewed:integer aasm_state:string:index

# position only matters in the newsletter ->   acts_as_list scope: :edition
# May not need this if we do a id list in mail_send
rails g model EditionArticle newsletter:references:index article:references:index edition:references:index  position:integer 
