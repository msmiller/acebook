class CreateSocialInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :social_infos do |t|

      t.integer :user_id

      t.string  :homepage_url

      t.string  :facebook_url
      t.string  :twitter_url
      t.string  :myspace_url
      t.string  :googleplus_url
      t.string  :linkedin_url

      t.string  :skype_url # skip

      t.string  :github_url
      
      t.string  :deviantart_url
      t.string  :flickr_url
      t.string  :instagram_url
      t.string  :pinterest_url
      t.string  :vimeo_url
      t.string  :imdb_url # skip
      t.string  :youtube_url

      t.string  :steam_url

      t.string  :medium_url
      t.string  :tumblr_url
      t.string  :blogger_url
      t.string  :wordpress_url

      t.timestamps
    end

    #add_column :users, :social_info_id, :integer
  end
end
