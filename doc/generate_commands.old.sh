DailyStat
PostNotification # to track push notification
Document
Rsvp
Poll
Survey
GroupPage
Journal # email with headers/links - prefs say how often to send

####

rails g model Mailsend mailing:references:index user:references:index processed_at:datetime delivered_at:datetime opened_at:datetime errors:string
rails g scaffold Form group:references:index post:references:index title:string description:text allow_multiple:boolean allow_edit:boolean
rails g scaffold FormQuestion form:references:index label:string kind:string porder:integer configs:text
# FormQuestion.configs includes list of posible answers, css, etc. - will vary with FormQuestion.kind
rails g scaffold FormReply form:references:index user:references:index response:text
# Response is a serialized hash of the form input

####

rails g scaffold PostImage user_id:integer group_id:integer caption:string marked4death:boolean
# This is what directs posts to specific subgroups. Using this technique allows for posting to multiuple subgroups
rails g model PostDirector post_id:integer subgroup_id:integer
rails g model StarredPost user_id:integer group_id:integer post_id:integer # group_id helps with selecting, if user_id == nil then it's a group pinned post
rails g scaffold Group owner_id:integer name:string description:string shortcode:string is_public:boolean is_active:boolean status:string plan_id:integer registered_on:datetime expires_on:datetime                                                                             
rails g scaffold Subgroup group_id:integer name:string description:string shortcode:string icon_name:string icon_color:string
rails g model Membership user_id:integer group_id:integer feed_pointer:integer opted_out_at:datetime
rails g model Submembership user_id:integer subgroup_id:integer opted_out_at:datetime
rails g scaffold Post group_id:integer user_id:integer title:string synopsis:string body:text icon_name:string hashcode:string is_template:boolean is_public:boolean post_at:datetime posted_at:datetime starts_at:datetime ends_at:datetime is_published:boolean poll_id:integer rsvp_id:integer survey_id:integer # document_id:integer
rails g model PostRead user_id:integer post_id:integer group_id:integer
rails g model Plan name:string shortcode:string description:string monthly_price:integer yearly_price:integer is_active:boolean is_visible:boolean max_users:integer has_subgroups:boolean has_tags:boolean has_templates:boolean has_calendar:boolean has_schedposts:boolean has_publicposts:boolean has_autoposts:boolean
rails g model Keyval owner_id:integer owner_type:string kay:string vee:string
rails g scaffold SwitchPanel owner_id:integer owner_type:string type:string switches:text
rails g model SystemUser name:string shortcode:string email:string description:string 

rails g model Mailing group:references:index user:references:index targets:text posts:text num_recips:integer emails_sent:integer send_started_at:datetime send_finished_at:datetime body:text
rails g model Mailtie mailing:references:index target:references{polymorphic}:index

###

rails g model TokenBank user:references:index balance:integer auto_refill_on:integer
rails g model BankTransaction user:references:index kind:string description:string error:string status:string

