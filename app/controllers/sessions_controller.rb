class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create

    @user = User.find_by(name:params[:name])
binding.pry
    if @user && @user.authenticate(params[:password])

    end


  end

end
