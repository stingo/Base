class AddSongIdToPunchesTable < ActiveRecord::Migration
  def change
  	add_column :punches, :song_id, :integer
  end
end
