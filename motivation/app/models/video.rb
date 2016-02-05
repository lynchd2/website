class Video < ActiveRecord::Base
	
	def self.find_random_video(param_type)
		all_videos = []
		videos = Video.where("type = ?", param_type)
		videos.each do |video|
			all_videos << video
		end
		video = all_videos.shuffle[0]
		return video
	end
end
