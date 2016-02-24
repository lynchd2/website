class VideosController < ApplicationController
	def show
		@video = Video.find_random_video_with_type(params[:type])
		@videos = VideoInfo.new("https://www.youtube.com/watch?v=#{@video.url}")
		@user = current_user if current_user
		@favorite = @user.favorite_videos.build() if current_user
		@type = params[:type]
		@unmotivational_video = @user.unmotivational_videos.build()
	end

	def categories
		@background = "videos-background"
	end

	def random
		@user = current_user if current_user
		@random_video = Video.find_random_video
		@random = rand(0..1)
		@path = ""
		if @random == 0
			@path = random_video_path
		else
			@path = random_image_path
		end
		@favorite = @user.favorite_videos.build() if current_user
	end
end
