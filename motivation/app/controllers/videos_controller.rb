class VideosController < ApplicationController
	def show
		@video = Video.find_random_video_with_type(params[:type])
		@videos = VideoInfo.new("https://www.youtube.com/watch?v=#{@video.url}")
	end

	def categories
		@background = "videos-background"
	end

	def random
		@random_video = params[:random_object]
	end
end
