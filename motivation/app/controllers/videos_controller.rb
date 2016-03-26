class VideosController < ApplicationController
	before_action :check_admin, only: [:create, :destroy]


	def index
		@best_videos = Video.order('favorite_videos_count desc').paginate(page: params[:page], per_page: 6, total_entries: 12)
		@user = current_user if current_user
		@favorite = @user.favorite_videos.build() if current_user
	end

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
		if @video
			@video_info = VideoInfo.new("https://www.youtube.com/watch?v=#{@video.url}") 
			@video_count = @video.users.count
			@unmotivational_count = UnmotivationalVideo.where(video_id: @video.id).count
		end
		@type = params[:type]
		@error_type = params[:type].split("V")[0].downcase
	end

	def categories
		@background = "videos-background"
	end

	def random
		@random_video = Video.find_random_video
		if current_user
			@user = current_user 
			@unmotivational_video = @user.unmotivational_videos.build()
			@favorite = @user.favorite_videos.build()
		end
		if @random_video
			@video_info = VideoInfo.new("https://www.youtube.com/watch?v=#{@random_video.url}")
			@video_count = @random_video.users.count
			@unmotivational_count = UnmotivationalVideo.where(video_id: @random_video.id).count
		end
		random_image_or_video()
		@video_param = params[:video] if params[:video]
		@error_type = "every category"
	end

	def create 
	  	@video = Video.new(videos_params)
	  	if !Video.exists?(url: @video.url) && @video.save
	  		flash[:notice] = "Video successfully added"
	  		redirect_to user_submitted_motivations_url
	  	else
	  		flash[:notice] = "Failed to add video"
	      	redirect_to user_submitted_motivations_url
	  	end
	end


	def destroy
	end


	def videos_params
		params.require(:video).permit(:url, :type)
	end

    def check_admin
        unless current_user.admin == true
          flash[:notice] = "Nice try. You do not have permission to access that"
          redirect_to '/'
        end
    end
end
