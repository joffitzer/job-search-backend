class Api::V1::AuthController < ApplicationController

    def create  
        token = request.headers["Authorization"] 
        if JWT.decode(token, "secret")[0]["user"]
            userId = JWT.decode(token, "secret")[0]["user"]
            user = User.find(userId)
            render json: {user: user}
        else
            employerId = JWT.decode(token, "secret")[0]["employer"]
            employer = Employer.find(employerId)
            render json: {employer: employer}
        end 
    end 

    def login 
        if User.find_by(email: params["auth"]["email"])
            user = User.find_by(email: params["auth"]["email"])
            if user && user.authenticate(params["auth"]["password"])
                token = JWT.encode({user: user.id}, "secret")
                render json: {user: user, token: token}
            else 
                render :json => { :errors => "invalid" }, :status => 422        
            end
        elsif Employer.find_by(email: params["auth"]["email"])
            employer = Employer.find_by(email: params["auth"]["email"])
            if employer && employer.authenticate(params["auth"]["password"])
                token = JWT.encode({employer: employer.id}, "secret")
                render json: {employer: employer, token: token}
            else 
                render :json => { :errors => "invalid" }, :status => 422        
            end 
        else 
            render :json => { :errors => "invalid" }, :status => 422        
        end 
    end 

end 