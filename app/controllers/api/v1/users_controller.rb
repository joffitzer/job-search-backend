class Api::V1::UsersController < ApplicationController

    def index 
        users = User.all
        render json: UserSerializer.new(users)
    end 

    def create 
        user = User.create(user_params)
        token = JWT.encode({user: user.id}, "secret")
        render json: {user: user, token: token}
    end 

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :bootcamp, :category, :grad_month, :grad_year, :password)
    end 

end
