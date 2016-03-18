class Image < ActiveRecord::Base
	has_many :favorite_images, dependent: :destroy
	has_many :users, through: :favorite_images
	has_many :unmotivational_images, dependent: :destroy

	def self.find_random_image_with_type_and_unmotivational(param_type, unmotivational_images)
		image = Image.where("type = ?", param_type)
					 .where.not(id: unmotivational_images)
					 .order("RANDOM()").first(1)
		return image[0]
	end

	def self.find_random_image_with_type(param_type)
		image = Image.where("type = ?", param_type).order("RANDOM()").first(1)[0]
	end

	def self.find_random_image
		random_image = Image.order("RANDOM()")
		return random_image[0]
	end
end
