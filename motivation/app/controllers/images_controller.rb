class ImagesController < ApplicationController
	def show
		if current_user
			@unmotivational_images = UnmotivationalImage.find_unmotivational_image_ids(current_user.id)
			@image = Image.find_random_image_with_type_and_unmotivational(params[:type], @unmotivational_images)
			@user = current_user
			@favorite = @user.favorite_images.build()
			@unmotivational_image = @user.unmotivational_images.build()
		else
			@image = Image.find_random_image_with_type(params[:type])
		end
		if @image
			@image_count = @image.users.count
			@unmotivational_count = UnmotivationalImage.where(image_id: @image.id).count
		end
		@type = params[:type]
		@error_type = params[:type].split("V")[0].downcase
	end

	def categories
		@background = "images-background"
	end

	def random
		if current_user
			@user = current_user 
			@favorite = @user.favorite_images.build()
			@unmotivational_image = @user.unmotivational_images.build()
		end
		@random_image =  Image.find_random_image
		@random = rand(0..1)
		@path = ""
		@image_count = @random_image.users.count
		@unmotivational_count = UnmotivationalImage.where(image_id: @random_image.id).count
		if @random == 0
			@path = random_video_path
		else
			@path = random_image_path
		end
		@error_type = "every category"
	end
end
