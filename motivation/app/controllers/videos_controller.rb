class VideosController < ApplicationController
	def show
		@video = Video.find_random_video_with_type(params[:type])
		@videos = VideoInfo.new("https://www.youtube.com/watch?v=#{@video.url}")
		@user = User.find_by(id: current_user.id) if current_user
		@favorite = @user.favorite_videos.create()
	end

	def categories
		@background = "videos-background"
	end

	def random
		@random_video = Video.find_random_video
	end
end
