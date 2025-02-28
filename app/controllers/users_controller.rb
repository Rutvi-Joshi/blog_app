class UsersController < ApplicationController
    before_action :authenticate_user!
  
    def show
      @user = current_user
    end
  
    def edit
      @user = current_user
    end
  
    def update
      @user = current_user
      if @user.update(user_params)
        redirect_to user_path(@user), notice: "Profile updated successfully!"
      else
        render :edit
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:avatar, :city, :state, :country, :phone, :gender)
    end
  end
  
