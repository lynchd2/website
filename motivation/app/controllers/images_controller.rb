class ImagesController < ApplicationController
	def show
		@image = Image.find_random_image_with_type(params[:type])
		@user = current_user.id if current_user
		@favorite = @user.favorite_videos.build() if current_user
		@type = params[:type]
	end

	def categories
		@background = "images-background"
	end

	def random
		@random_image =  Image.find_random_image
	end
end
