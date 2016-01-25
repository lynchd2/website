class Video < ActiveRecord::Base
	def self.find_random_video(param_type)
		ids = []
		videos = Video.where("type = ?", param_type)
		videos.each do |video|
			ids << video.id
		end
		return Video.find_by(id:ids.shuffle[0])
	end
end
