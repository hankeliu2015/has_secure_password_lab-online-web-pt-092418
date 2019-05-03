class SessionsController < ApplicationController
  def new
    # @user = User.new // can not user User.new.
    # There is no new user's created, so the create action won't able to find anything by that.
  end

  def create
    # binding.pry
    @user = User.find_by(name:params[:user][:name])

    if @user && @user.authenticate(params[:user][:password])
 # binding.pry
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:alert] = "Please signup as new user"
      redirect_to new_users_path
    end
  end

end
