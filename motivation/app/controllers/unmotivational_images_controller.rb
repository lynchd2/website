class UnmotivationalImagesController < ApplicationController
  
  def show
  	@image = Image.find_by(id: params[:id])
  end

  def index
 	  @all_unmotivational_images = UnmotivationalImage.where(user_id: current_user.id)
  end

  def create
  	if current_user 
		  @user = User.find_by(id: current_user.id)
		  @unmotivational_image = UnmotivationalImage.new(unmotivational_images_params)
		  if !UnmotivationalImage.exists?(image_id: @unmotivational_image.image_id,
			 							                  user_id: @unmotivational_image.user_id) && @unmotivational_image.save
			   redirect_to root_url
			   flash[:notice] = "You will no longer see that image"
		  else
			   redirect_to root_url
			   flash[:notice] = "You have already marked that image as unmotivational"
		  end
	  else
		  redirect_to root_url
		  flash[:notice] = "You must sign in to do that"
    end
  end

  def destroy
  end

  private

  def unmotivational_images_params
  	params.require(:unmotivational_image).permit(:image_id, :user_id, :url)
  end

end