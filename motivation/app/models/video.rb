class Video < ActiveRecord::Base
	
	def self.find_random_video_with_type(param_type)
		video = Video.where("type = ?", param_type).order("RANDOM()").first(1)
		return video[0]
	end
end
