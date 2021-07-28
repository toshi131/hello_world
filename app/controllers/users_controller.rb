class UsersController < ApplicationController
<<<<<<< HEAD
=======
  def new
    @user = User.new
  end
>>>>>>> sign_up

  def show
    @user = User.find(params[:id])
  end

<<<<<<< HEAD
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
=======
    def create
    @user = User.new(user_params)
      flash[:success] = "Welcome to the Sample App!"
    if @user.save
            redirect_to @user
          else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,:password_confirmation)
>>>>>>> sign_up
    end
end
