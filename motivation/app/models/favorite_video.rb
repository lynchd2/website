class FavoriteVideo < ActiveRecord::Base
	belongs_to :user
	belongs_to :video

	def self.display_random_favorite_video(user)
		video = FavoriteVideo.where(user_id: user.id).order("RANDOM()").first(1)[0]
		video_thumbnail = VideoInfo.new("https://www.youtube.com/watch?v=#{video.url}").thumbnail_large
	end
end
