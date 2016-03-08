class UnmotivationalVideosController < ApplicationController

  def show
  	@video = Video.find_by(id: params[:id])
  end

  def index
  	@all_unmotivational_videos = UnmotivationalVideo.where(user_id: current_user.id)
  end

  def create
  	if current_user 
		@user = User.find_by(id: current_user.id)
		@unmotivational_video = UnmotivationalVideo.new(unmotivational_videos_params)
		if !UnmotivationalVideo.exists?(video_id: @unmotivational_video.video_id,
			 							 user_id: @unmotivational_video.user_id) && @unmotivational_video.save
			redirect_to root_url
			flash[:notice] = "You will no longer see that video"
		else
			redirect_to root_url
			flash[:notice] = "You have already marked that video as unmotivational"
		end
	else
		redirect_to root_url
		flash[:notice] = "You must sign in to do that"
	end

  end

  def destroy
  end

  private

  def unmotivational_videos_params
  	params.require(:unmotivational_video).permit(:video_id, :user_id, :url)
  end
end
