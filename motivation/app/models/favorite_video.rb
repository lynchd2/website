class FavoriteVideo < ActiveRecord::Base
	belongs_to :user
	belongs_to :video, counter_cache: true
	
	def self.display_random_favorite_video(user)
		video = FavoriteVideo.where(user_id: user.id).order("RANDOM()").first(1)[0]
			if video
				video_thumbnail = VideoInfo.new("https://www.youtube.com/watch?v=#{video.url}").thumbnail_large
			else
				nil
			end
	end

	def self.display_all_favorite_videos(user)
		videos = FavoriteVideo.where(user_id: user.id)
		videos.map do |video|
			[video, VideoInfo.new("https://www.youtube.com/watch?v=#{video.url}").thumbnail_large]
		end
	end



end
