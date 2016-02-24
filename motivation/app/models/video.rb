class Video < ActiveRecord::Base
	include SessionsHelper

	has_many :favorite_videos
	has_many :users, through: :favorite_videos
	has_many :unmotivational_videos
	
	def self.find_random_video_with_type(param_type)
		video = Video.where("type = ?", param_type).order("RANDOM()").first(1)
		if video[0].id == UnmotivationalVideo.where("user_id = ?", 2)
											 .where("video_id = ?", video[0].id).video_id
			Video.find_random_video_with_type(param_type) 
		else
			return video[0]
		end
	end

	def self.find_random_video
		random_video = Video.order("RANDOM()")
		return random_video[0]
	end
end
