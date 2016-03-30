class Video < ActiveRecord::Base
	has_many :favorite_videos, dependent: :destroy
	has_many :users, through: :favorite_videos
	has_many :unmotivational_videos, dependent: :destroy
	
	def self.find_random_video_with_type_and_unmotivational(param_type, unmotivational_videos)
		video = Video.where("type = ?", param_type)
					 .where.not(id: unmotivational_videos)
					 .order("RANDOM()").first(1)
		return video[0]
	end

	def self.find_random_video_with_type(param_type)
		Video.where("type = ?", param_type).order("RANDOM()").first(1)[0]
	end

	def self.find_random_video
		random_video = Video.order("RANDOM()")
		return random_video[0]
	end

	def self.find_random_video_with_unmotivational(unmotivational_videos)
		random_video = Video.where.not(id: unmotivational_videos)
							.order("RANDOM()")
		return random_video[0]		
	end
end
