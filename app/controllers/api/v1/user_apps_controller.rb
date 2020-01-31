class Api::V1::UserAppsController < ApplicationController

    def index 
        userApps = UserApp.all
        render json: UserAppSerializer.new(userApps)
    end 

    def create 
        userApp = UserApp.create(user_app_params)
        render json: userApp, except: [:updated_at]
    end 

end

private

def user_app_params
    params.require(:user_app).permit(:mini_cl, :job_id, :user_id)
end
