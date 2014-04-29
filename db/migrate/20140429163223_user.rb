class User < ActiveRecord::Migration
  def change
     create_table :users do |t|
       t.string     :name
       t.string     :nickname
       t.string     :image
       t.string     :provider
       t.integer    :uid
       t.string     :token
     end
     add_index :users, :uid
  end
end
