class User < ActiveRecord::Migration
   def change
     create_table :user do |t|
       t.string :name
       t.string :nickname
       t.string :image
       t.string :provider
       t.string :uid
       t.string :token
     end
     add_index :user, :uid
  end
end
