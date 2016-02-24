class ImagesController < ApplicationController
	def show
		@image = Image.find_random_image_with_type(params[:type])
		@user = current_user if current_user
		@favorite = @user.favorite_images.build() if current_user
		@type = params[:type]
	end

	def categories
		@background = "images-background"
	end

	def random
		@user = current_user if current_user
		@random_image =  Image.find_random_image
		@random = rand(0..1)
		@path = ""
		if @random == 0
			@path = random_video_path
		else
			@path = random_image_path
		end
		@favorite = @user.favorite_images.build() if current_user
	end
end
