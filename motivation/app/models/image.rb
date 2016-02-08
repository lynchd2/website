class Image < ActiveRecord::Base

	def self.find_random_image(param_type)
		all_images = []
		images = Image.where("type = ?", param_type)
		images.each do |image|
			all_images << image
		end
		image = all_images.shuffle[0]
		return image
	end
end
