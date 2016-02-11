class StaticPagesController < ApplicationController
	def home
		@path = ""
		@background = "homepage"
		@random = rand(0..1)
		@random_video_or_image = [Video.find_random_video, Image.find_random_image][@random]
		if @random == 0
			@path = random_video_path
		else
			@path = random_image_path
		end

	end

	def about
	end
end
