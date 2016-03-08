class UnmotivationalVideo < ActiveRecord::Base
	belongs_to :user
	belongs_to :video

	def self.find_unmotivational_video_ids(user_id)
		UnmotivationalVideo.where(user_id: user_id).pluck(:video_id)
	end
end
