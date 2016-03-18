class FavoriteImage < ActiveRecord::Base
	belongs_to :user
	belongs_to :image, counter_cache: true


	def self.display_random_favorite_image(user)
		image = FavoriteImage.where(user_id: user.id).order("RANDOM()").first(1)[0]
		image ? image.url : nil
	end
end
