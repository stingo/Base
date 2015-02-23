json.array!(@songs) do |song|
  json.extract! song, :id, :title, :description, :genre, :song_type, :artist, :country, :video_embed, :lyrics, :release_date
  json.url song_url(song, format: :json)
end
