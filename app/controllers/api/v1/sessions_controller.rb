class Api::V1::SessionsController < ApplicationController
  def login
    @user = User.find_by(username: params[:user][:username])  
    if @user && @user.authenticate(params[:user][:password])
      render "users/user_with_token.json.jbuilder", user: @user
    else
      #send an error
    end
  end
end