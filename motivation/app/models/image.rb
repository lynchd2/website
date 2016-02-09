class Image < ActiveRecord::Base

	def self.find_random_image_with_type(param_type)
		all_images = []
		image = Image.where("type = ?", param_type).order("RANDOM()").first(1)
		return image[0]
	end

	#def self.find_random_image_with_type
		#all_image_ids = Image.
		#image = Image.where()
end
