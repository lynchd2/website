class UserSubmittedMotivationsController < ApplicationController
  before_action :check_admin, only: [:index, :destory] 

	def new
		@types = []
		@types << Video.pluck(:type).uniq
		@types << Image.pluck(:type).uniq
		@types.flatten!
		@usm =  UserSubmittedMotivation.new()
	end


  	def index
  		@user_submitted_motivations = UserSubmittedMotivation.all.order('created_at DESC')
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
      @usm = UserSubmittedMotivation.find(params[:id])
      @usm.destroy
      flash[:notice] = "You have succesfully deleted the object"
      redirect_to user_submitted_motivations_path
  	end


  	private

  	def usm_params
  		params.require(:user_submitted_motivation).permit(:type_submitted, :url, :format)
  	end

    def check_admin
        unless current_user.admin == true
          flash[:notice] = "Nice try. You do not have permission to access there"
          redirect_to '/'
        end
    end
end


