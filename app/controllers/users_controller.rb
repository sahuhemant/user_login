class UsersController < ApplicationController
  def index
  end
  def home
  end


  def new
    @user = User.new
  end

	def create
	  @user = User.new(user_params)
	  if @user.save
	    flash[:notice] = "User #{user_params[:username]} created successfully"
	    redirect_to root_path
	  else
	    flash[:alert] = 'Failed to create user'
	    render :new
	  end
	end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
