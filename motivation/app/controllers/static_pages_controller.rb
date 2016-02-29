class StaticPagesController < ApplicationController
	def home
		@background = "homepage"
		@random = rand(0..1)
		@path = ""
		if @random == 0
			@path = random_video_path
		else
			@path = random_image_path
		end
	end

	def about
	end

	def submit
		@types = Video.column_names()
	end
end
