class UnmotivationalImage < ActiveRecord::Base
	belongs_to :user
	belongs_to :image

	def self.find_unmotivational_image_ids(user_id)
		UnmotivationalImage.where(user_id: user_id).pluck(:image_id)
	end
end
