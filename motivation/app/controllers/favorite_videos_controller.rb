class FavoriteVideosController < ApplicationController
	def new
		@favorite = FavoriteVideo.new
	end

	def create 
		if current_user 
			@user = User.find_by(id: current_user.id)
		else
			@user = nil
			redirect_to root_url
			flash[:notice] = "You must sign in to add favorites"
		end
		@favorite = FavoriteVideo.new(favorite_videos_params)
		if !(FavoriteVideo.find_by(video_id: @favorite.video_id, user_id: @favorite.user_id)) && @favorite.save
			redirect_to root_url
			flash[:notice] = "Video saved to your favorites"
		else
			redirect_to root_url
			flash[:notice] = "That video is already in your favorites"
		end
	end

	def index
		@user = current_user
		@videos = current_user.favorite_videos.where(user_id: current_user.id)
		@favorite_videos = FavoriteVideo.display_all_favorite_videos(@user)
	end

	def show
		@user = current_user
		@favorite_video = FavoriteVideo.find_by(user_id: params[:user_id], video_id: params[:id])
		@favorite = @user.favorite_videos.build()
	end

	def destroy
		FavoriteVideo.find_by(id: params[:id]).destroy
		flash[:notice] = "Favorite Video deleted!"
		redirect_to user_favorite_videos_path
	end

	private

	def favorite_videos_params
		params.require(:favorite_video).permit(:url, :video_id, :user_id)
	end

end
