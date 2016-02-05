class VideosController < ApplicationController
	def show
		@video = Video.find_random_video(params[:type])
		@videos = VideoInfo.new("https://www.youtube.com/watch?v=#{@video.url}")
	end

	def categories
		@background = "videos-background"
	end
end
