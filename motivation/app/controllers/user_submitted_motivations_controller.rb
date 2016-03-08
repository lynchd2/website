class UserSubmittedMotivationsController < ApplicationController

	def new
		@types = []
		@types << Video.pluck(:type).uniq
		@types << Image.pluck(:type).uniq
		@types.flatten!
		@usm =  UserSubmittedMotivation.new()
	end


  	def index
  		@usms = UserSubmittedMotivation.paginate(:page => 5, :per_page => 2)
  	end

  	def create
      @user = current_user ? current_user : false
  		@usm = !(@user == false) ?  @user.user_submitted_motivations.new(usm_params) : UserSubmittedMotivation.new(usm_params)
      if @usm.save 
  			flash[:notice] = "Your image or video has been saved! Thanks for contributing!"
  			redirect_to root_path
  		else
  			flash[:notice] = "Please try again"
  			redirect_to new_user_submitted_motivation_path
  		end
  	end

  	def destroy
  	end


  	private

  	def usm_params
  		params.require(:user_submitted_motivation).permit(:type_submitted, :url, :format)
  	end
end


