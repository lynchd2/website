class StaticPagesController < ApplicationController
	def home
		@path = ""
		@background = "homepage"
		@random = rand(0..1)
		if @random == 0
			@path = random_video_path
		else
			@path = random_image_path
		end

	end

	def about
	end
end
