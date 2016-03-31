class UnmotivationalImagesController < ApplicationController
  
  def show
  	@image = UnmotivationalImage.find_by(image_id: params[:id])
    @image_count = @image.image.favorite_images_count
    @unmotivational_count = UnmotivationalImage.where(image_id: @image.id).count
  end

  def index
    @user = current_user
 	  @unmotivational_images = UnmotivationalImage.where(user_id: @user).paginate(page: params[:page], per_page: 20)
  end

  def create
  	if current_user 
		  @user = User.find_by(id: current_user.id)
		  @unmotivational_image = UnmotivationalImage.new(unmotivational_images_params)
		  if !UnmotivationalImage.exists?(image_id: @unmotivational_image.image_id,
			 							                  user_id: @unmotivational_image.user_id) && @unmotivational_image.save
			   redirect_to image_categories_path
			   flash[:notice] = "You will no longer see that image when searching for images"
		  else
			   redirect_to image_categories_path
			   flash[:notice] = "You have already marked that image as unmotivational"
		  end
	  else
		  redirect_to "sessions/new"
		  flash[:notice] = "You must sign in to do that"
    end
  end

  def destroy
    UnmotivationalImage.find_by(id: params[:id]).destroy
    flash[:notice] = "Unmotivational image deleted!"
    redirect_to user_unmotivational_images_path
  end

  private

  def unmotivational_images_params
  	params.require(:unmotivational_image).permit(:image_id, :user_id, :url)
  end

end
