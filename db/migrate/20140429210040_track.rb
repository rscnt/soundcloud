class Track < ActiveRecord::Migration
  def change
     create_table :tracks do |t|
         t.integer  :track_id
         t.string   :created_at
         t.integer  :user_id
         t.integer  :duration
         t.boolean  :commenatable
         t.string   :state
         t.string   :title
         t.string   :permalink
         t.boolean  :streamable
         t.boolean  :downloadable
         t.string   :track_type
         t.string   :uri
         t.string   :permalink_url
         t.string   :stream_url
         t.string   :artwork_url
     end
  end
end
