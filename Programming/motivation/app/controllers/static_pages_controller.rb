class StaticPagesController < ApplicationController
	def home
		@background = "homepage"
	end

	def videos
		@background = "videos-background"
	end

	def images
	end

	def about
	end
end
