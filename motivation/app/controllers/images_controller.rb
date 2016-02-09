class ImagesController < ApplicationController
	def show
		@image = Image.find_random_image_with_type(params[:type])
	end

	def categories
	end
end
