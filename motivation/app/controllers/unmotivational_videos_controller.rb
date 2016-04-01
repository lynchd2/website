class UnmotivationalVideosController < ApplicationController
  before_action :check_current_user, only: [:create, :destroy]

  def show
  	@video = UnmotivationalVideo.find_by(video_id: params[:id])
    @video_title = VideoInfo.new("https://www.youtube.com/watch?v=#{@video.url}") 
    @video_count = @video.video.favorite_videos_count
    @unmotivational_count = UnmotivationalVideo.where(video_id: @video.id).count
  end

  def index
    @user = current_user
  	@unmotivational_videos = UnmotivationalVideo.where(user_id: current_user.id).paginate(page: params[:page], per_page:20)
  end

  def create
  	if current_user 
		  @user = User.find_by(id: current_user.id)
		  @unmotivational_video = UnmotivationalVideo.new(unmotivational_videos_params)
		  if !UnmotivationalVideo.exists?(video_id: @unmotivational_video.video_id,
			 							                  user_id: @unmotivational_video.user_id) && @unmotivational_video.save
			     redirect_to video_categories_path
			     flash[:notice] = "You will no longer see that video when searching for videos"
		      else
			       redirect_to video_categories_path
			       flash[:notice] = "You have already marked that video as unmotivational"
		      end
	   else
		    redirect_to root_url
		    flash[:notice] = "You must sign in to do that"
	   end

  end

  def destroy
    UnmotivationalVideo.find_by(id: params[:id]).destroy
    flash[:notice] = "Unmotivational video deleted!"
    redirect_to user_unmotivational_videos_path
  end

  private

  def unmotivational_videos_params
  	params.require(:unmotivational_video).permit(:video_id, :user_id, :url)
  end

  def check_current_user
    @user = User.find(params[:user_id])
    unless current_user?(@user)
      redirect_to(root_url)
      flash[:notice] = "You need to be signed in as that user to perform that action." 
    end
  end
end
