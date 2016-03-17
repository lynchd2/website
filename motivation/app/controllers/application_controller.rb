class ApplicationController < ActionController::Base
  helper_method :video_title, :random_image_or_video
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include VideosHelper
  include SessionsHelper

	def video_title(video)
	  VideoInfo.new("https://www.youtube.com/watch?v=#{video.url}").title
	end

	def random_image_or_video
		if params[:image]
			@path = random_image_path
		elsif params[:video]
			@path = random_video_path
		elsif 
			@random = rand(0..1)
			if @random == 0
				@path = random_video_path
				return @path
			else
				@path = random_image_path
				return @path
			end
		end
	end

end