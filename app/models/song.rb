class Song < ActiveRecord::Base
	belongs_to :user
	has_many :reviews
	mount_uploader :cover, CoverUploader
	mount_uploader :audio, AudioUploader
	acts_as_taggable_on :tags
	acts_as_punchable

def embed(video_embed)
    youtube_id = video_embed.split("=").last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  end

end
