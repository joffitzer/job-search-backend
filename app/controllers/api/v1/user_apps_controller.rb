class Api::V1::UserAppsController < ApplicationController

    def index 
        userApps = UserApp.all
        render json: UserAppSerializer.new(userApps)
    end 

end
