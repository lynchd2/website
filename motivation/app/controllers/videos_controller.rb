class VideosController < ApplicationController
	def show
		if current_user
			@user = current_user
			@unmotivational_videos = UnmotivationalVideo.find_unmotivational_video_ids(@user.id)
			@video = Video.find_random_video_with_type_and_unmotivational(params[:type], @unmotivational_videos)
			@favorite = @user.favorite_videos.build()
			@unmotivational_video = @user.unmotivational_videos.build()
		
		else
			@video = Video.find_random_video_with_type(params[:type])
		end
		@video_info = VideoInfo.new("https://www.youtube.com/watch?v=#{@video.url}")
		@type = params[:type]
		@video_count = @video.users.count
		@unmotivational_count = UnmotivationalVideo.where(video_id: @video.id).count
	end

	def categories
		@background = "videos-background"
	end

	def random
		if current_user
			@user = current_user 
			@unmotivational_video = @user.unmotivational_videos.build()
			@favorite = @user.favorite_videos.build()
		end
		@random_video = Video.find_random_video
		@video_info = VideoInfo.new("https://www.youtube.com/watch?v=#{@random_video.url}")
		@random = rand(0..1)
		@path = ""
		@video_count = @random_video.users.count
		@unmotivational_count = UnmotivationalVideo.where(video_id: @random_video.id).count
		if @random == 0
			@path = random_video_path
		else
			@path = random_image_path
		end
	end
end
