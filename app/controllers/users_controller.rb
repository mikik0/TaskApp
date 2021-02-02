class UsersController < ApplicationController
    before_action :set_user
  
    def create
      if @user.save
        NotificationMailer.send_confirm_to_user(@user).deliver
        redirect_to @user
      else
        render 'new'
      end
    end
end