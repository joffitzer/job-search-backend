class Api::V1::AuthController < ApplicationController

    def create  
        token = request.headers["Authorization"]
        userId = JWT.decode(token, "secret")[0]["user"]
        user = User.find(userId)
        render json: {user: user}
    end 

end 