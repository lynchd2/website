class VideosController < ApplicationController

	def categories
		@background = "videos-background"
	end

	def show
		@video = Video.find_random_video(params[:type])
		@video_information = VideoInfo.new("https://www.youtube.com/watch?v=#{@video.url}")
	end
end
