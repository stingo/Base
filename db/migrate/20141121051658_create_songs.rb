class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.text :description
      t.string :genre
      t.string :song_type
      t.string :artist
      t.string :country
      t.string :video_embed
      t.string :lyrics
      t.date :release_date

      t.timestamps
    end
  end
end
