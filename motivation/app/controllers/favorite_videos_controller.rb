class FavoriteVideosController < ApplicationController
	def new
		@favorite = Favorite.new
	end

	def create 
		@favorite = FavoriteVideo.create()
	end
end
