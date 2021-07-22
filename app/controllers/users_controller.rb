class UsersController < ApplicationController
  def new
    @user = user.new
  end

  def show
    @user = User.find(params[:id])
  end
end
