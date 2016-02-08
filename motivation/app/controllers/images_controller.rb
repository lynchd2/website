class ImagesController < ApplicationController
	def show
		@image = Image.find_random_image(params[:type])
	end

	def categories
	end
end
