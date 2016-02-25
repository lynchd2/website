class VideosController < ApplicationController
	def show
		if current_user
			@unmotivational_videos = UnmotivationalVideo.find_unmotivational_video_ids(current_user.id)
			@video = Video.find_random_video_with_type(params[:type], @unmotivational_videos)
			@user = current_user
			@favorite = @user.favorite_videos.build()
		end
		@videos = VideoInfo.new("https://www.youtube.com/watch?v=#{@video.url}")
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
