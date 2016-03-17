class StaticPagesController < ApplicationController
	def home
		@background = "homepage"
		@random = rand(0..1)
		random_image_or_video
	end

	def about
	end

	def submit
	end
end
