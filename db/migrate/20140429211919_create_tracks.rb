class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks_not_usable do |t|
      t.timestamps
    end
  end
end
