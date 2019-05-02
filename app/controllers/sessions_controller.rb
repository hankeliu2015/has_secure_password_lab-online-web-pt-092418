class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create

    @user = User.find_by(username:params[:username])
binding.pry
    if @user && @user.authenticate(params[:password])

    end


  end

end
