class Api::V1::AuthController < ApplicationController

    def create  
        token = request.headers["Authorization"]
        userId = JWT.decode(token, "secret")[0]["user"]
        user = User.find(userId)
        render json: {user: user}
    end 

    def login 
        user = User.find_by(email: params["auth"]["email"])
        if user && user.authenticate(params["auth"]["password"])
            token = JWT.encode({user: user.id}, "secret")
            render json: {user: user, token: token}
        end
    end 

end 