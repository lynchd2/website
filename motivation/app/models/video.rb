class Video < ActiveRecord::Base
	
	def self.find_random_video_with_type(param_type)
		video = Video.where("type = ?", param_type).order("RANDOM()").first(1)
		return video[0]
	end

	def self.find_random_video
		random_video = Video.order("RANDOM()")[0].url
		return random_video
	end
end
