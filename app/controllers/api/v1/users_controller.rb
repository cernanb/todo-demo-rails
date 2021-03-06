class Api::V1::UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      #do something
      token = Auth.encode(@user.id)
      # render json: { token: token, user: }
      render "users/user_with_token.json.jbuilder", user: @user
    else
      #do someting else
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :username)
  end
end
